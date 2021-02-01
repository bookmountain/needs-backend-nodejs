const express = require("express");
const db = require(__dirname + "/../db_connect");
const router = express.Router();
const upload = require(__dirname + "/TemplateUploadmodule");
const upload1 = require(__dirname + "/StoryImgUploadmodule");

router.use(express.urlencoded({ extended: false }));
router.use(express.json());

//templatelist
router.get("/", async (req, res) => {
  let sql = ``;
  {
    [req.query.type] == 3
      ? (sql = `SELECT template.*, plan_type.name AS plan_name FROM template 
       LEFT JOIN plan_type
       ON template.plan_id = plan_type.id`)
      : (sql = `
    SELECT template.*, plan_type.name AS plan_name FROM template 
        LEFT JOIN plan_type
        ON template.plan_id = plan_type.id
        WHERE plan_type.id = ?`);
  }

  console.log("req", req.query.type);
  const [results] = await db.query(sql, [req.query.type]);
  console.log("results", results);
  if (!results.length) {
    return res.json("error");
  }
  res.json(results);
});


//--editpage--
//editpage-Bgimg-upload
router.post("/editpage", 
upload.single("image"), async (req, res) => {
  console.log("req", req.file.filename);
  console.log("req", req.file);
  const BgImg =  req.file.filename
  console.log('filename',BgImg)
  
  let sql =
    "UPDATE `brand_info` SET `bg_img` = ? WHERE `brand_info`.`merchant_id` = ?;"
  
  const [results1] = await db.query(sql, [req.file.filename , 12]);

console.log("results1", results1);
  if (!results1.affectedRows) {
    return res.json("error");
}
  res.json(
    {
    "name": BgImg,
    "status": "done",
    "url": "http://localhost:5000/BackgroundImg/"+BgImg,
    "thumbUrl": "http://localhost:5000/BackgroundImg/"+BgImg
  }
  );
});

//Storyimg-upload
router.post("/postStoryImg", 
upload1.single("image"),async (req, res) => {
  console.log("req", req.file.filename);
  console.log("req", req.file);
  const filename =  req.file.filename
  console.log('filename',filename)
  
  let sql =
    "UPDATE `brand_info` SET `brandStory_img` = ? WHERE `brand_info`.`merchant_id` = ?;"
  
  const [results1] = await db.query(sql, [req.file.filename , 12]);

console.log("results1", results1);
  if (!results1.affectedRows) {
    return res.json("error");
}
  res.json(
    {
    "name": filename,
    "status": "done",
    "url": "http://localhost:5000/BrandStoryImg/"+filename,
    "thumbUrl": "http://localhost:5000/BrandStoryImg/"+filename
  }
  );
});

//info-upload
router.post("/editpage/changeData", upload.none(), async (req, res) => {
  console.log("req", req.body);
  const brand_story = req.body[0]
  const bg_color=req.body[1]
  const main_productId= req.body[2]
  const main_activitiesId= req.body[3]
  console.log("id", req.query.id);
  console.log(brand_story)
  console.log(bg_color)

  let sql =
    "UPDATE `brand_info` SET `brand_story` = ?, `bg_color` = ?, `main_productId` = ?, `main_activitiesId` = ? WHERE `brand_info`.`merchant_id` = ?;"
  const [results2] = await db.query(sql, [brand_story, bg_color, main_productId, main_activitiesId, req.query.id]);
  // console.log("results2", results2);
  if (!results2.affectedRows) {
    return res.json("error");
}
  res.json(
    {
    success:"success!"
  }
  );
});

// selector

// get sepcific merchant, ALL_info //merchant_id = 12
// http://localhost:5000/Template/merchant_info?merchants=12
router.get("/merchant_info", async(req, res) => {
  const merchant_sql =
  "SELECT * FROM merchants LEFT JOIN brand_info ON merchants.id = brand_info.merchant_id WHERE merchants.id=?";

  // console.log('merchant_req',req.query)
  const [[merchant]] = await db.query(merchant_sql, [req.query.merchants]);//商家所有資訊
  const product_count_sql =
    "SELECT COUNT(1) as count FROM products WHERE merchant_id = ?";
  const [[row]] = await db.query(product_count_sql, [req.query.merchants]);//商品數

  let since = new Date(merchant.created_at);
  let now = new Date();
  let months = (since.getFullYear() - now.getFullYear()) * 12;
  months -= since.getMonth();
  months += now.getMonth();

  merchant.created_months = months;
  merchant.product_amount = row.count;
  merchant.review = 4.8;
  merchant.fans = 32;
  console.log('merchant',merchant)
    if(! merchant){
        return res.json('error');
    }
    res.json(merchant);
});


//get specific merchant_product(activities & products)
// http://localhost:5000/Template/merchant_product?merchant_id=12
router.get("/merchant_product", async(req, res) => {
  const products_sql =
  `SELECT products.id, products.title, products.outline, products.image_path, products.type, product_skus.price FROM products 
  LEFT JOIN product_skus
  ON products.id = product_skus.product_id WHERE type=0 AND merchant_id=?
  GROUP BY(products.id)`;//商家商品
  const activities_sql =
  "SELECT products.id, products.title, products.outline, products.image_path, products.type, product_skus.price, product_skus.specification FROM products LEFT JOIN product_skus ON products.id = product_skus.product_id WHERE type=1 AND merchant_id=? GROUP BY(product_skus.product_id)";//商家活動
  const [products] = await db.query(products_sql, [req.query.merchant_id]);
  const [activities] = await db.query(activities_sql, [req.query.merchant_id]);
  console.log('product_req',req.query)
  console.log('products',products)
  console.log('activities',activities)
  const output={
      products:[products],
      activities:[activities]
  }
    if(! products && activities){
        return res.json('error');
    }
    res.json(output);
});

async function getMerchantData(id, exclude) {
  const merchant_sql =
    "SELECT * FROM merchants LEFT JOIN brand_info ON merchants.id = brand_info.merchant_id WHERE merchants.id=?";
  const [[merchant]] = await db.query(merchant_sql, [id]);//商家所有資訊

  const products_sql =
    "SELECT id,title,image_path FROM products WHERE merchant_id=? and id!=? LIMIT 6";
  const [products] = await db.query(products_sql, [id, exclude]);//商家商品

  merchant.products = products.map((product) => {
    product.image_path = product.image_path.trim().split(",")[0];
    return product;
  });

  const reformattedArray = products.map((item) => Object.values(item)[0]);
  const placeholder = Array(reformattedArray.length).fill("?").join();

  const skus_sql =
    "SELECT * FROM product_skus WHERE product_id IN (" + placeholder + ")";
  const [skus] = await db.query(skus_sql, reformattedArray);

  products.map(function (product) {
    sku = skus.find((s) => s.product_id == product.id);
    return (product.price = sku.price), (product.sale_price = sku.sale_price);
  });

  let since = new Date(merchant.created_at);
  let now = new Date();
  let months = (since.getFullYear() - now.getFullYear()) * 12;
  months -= since.getMonth();
  months += now.getMonth();
  merchant.created_months = months;

  const product_count_sql =
    "SELECT COUNT(1) as count FROM products WHERE merchant_id = ?";
  const [[row]] = await db.query(product_count_sql, [id]);//商品數
  merchant.product_amount = row.count;

  merchant.review = 4.8;
  merchant.review_amount = 3600;
  merchant.fans = 21;

  return merchant;
}

router.get("/merchant/:id", async (req, res) => {
  res.json(await getMerchantData(req.params.id, req.query.exclude));
});



// // get sepcific template
// router.get("/:id", async(req, res) => {
//   const sql = "SELECT * FROM template WHERE id=?";

//     const [results] = await db.query(sql, [req.params.id]);
//     if(! results.length){
//         return res.json('error');
//     }
//     res.json(results[0]);
// });


//get picture
// router.post("/upload", upload.array("imgage",12), (req, res) => {
//   const TempFile = req.files.upload
//   const TempPathFile = TempFile.path

//   const targetPathUrl = path.join(__dirname + "/image/" + TempFile.name)

//   if(path.extname(TempFile.originalFilename).toLowerCase() === ".png" || ".jpg"){
//     fs.rename(TempPathFile,targetPathUrl ,err => {
//       if(err) return console.log(err)
//     })
//   }

//   console.log(req.file);
// });

// get all template
// router.get("/", (req, res) => {
//   db.query("SELECT * FROM template").then(([results])=>{
//     res.json(results)
//   })
// });

//get sepcific template
// router.get("/:id", async(req, res) => {
//   const sql = "SELECT * FROM template WHERE id=?";

//     const [results] = await db.query(sql, [req.params.id]);
//     if(! results.length){
//         return res.json('error');
//     }
//     res.json(results[0]);
// });

  // const [{ affectedRows, insertId }] = await db.query(sql, [
  //   req.file.filename,
  //   12,
  // ]);

//   res.json({
//     success: !!affectedRows,
//     affectedRows,
//     insertId,
//   });
// });

// router.post('/',upload.none(),async(req, res) => {
//   console.log(req.body);
//   if ( !req.body[0]) return
//     const data = {
//       title: req.body[0],
//       image: req.body[1],
//       outline: req.body[2],
//       detial: JSON.stringify(req.body[3]),
//     };

//   const sql =
//     "INSERT INTO `template` set ?";
//    console.log("3");
//   const [{ affectedRows, insertId }] = await db.query(sql, [data]);
//     console.log("4");
//   res.json({
//     success: !!affectedRows,
//     affectedRows,
//     insertId,
//   });
// });

// router.get("/articles/:id", (req, res) => {
//   const article = article.find((c) => c.id === parseInt(req.params.id));
//   if (!article) res.status(404).send("The article is not found");
// });

module.exports = router;
