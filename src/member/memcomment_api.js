const express = require("express");

const db = require(__dirname + "/../db_connect");

const router = express.Router();

async function Comment(req) {
  const output = {};
  switch (req.query.filter) {
    case "already":
      let sqlGetcomment =
        "SELECT order_evaluations.*, products.title,products.image_path,merchants.brand_name FROM order_evaluations LEFT JOIN products ON order_evaluations.product_id = products.id LEFT JOIN merchants ON order_evaluations.merchant_id = merchants.id WHERE customer_id = ? AND order_evaluations.buyer_message IS NOT null";
      const [results1] = await db.query(sqlGetcomment, [req.query.customer_id]);
      output.filter = "brands";

      results1.map((product) => {
        const img = product.image_path.trim().split(",")[0];
        product.image_path = img;
      });
      console.log('aaa')
      output.rows = results1;
      return output;
      
    case "notyet":
      let sqlUncomment =
        "SELECT order_evaluations.*, products.title,products.image_path,merchants.brand_name,order_evaluations.comment_id FROM order_evaluations LEFT JOIN products ON order_evaluations.product_id = products.id LEFT JOIN merchants ON order_evaluations.merchant_id = merchants.id WHERE customer_id = ? AND order_evaluations.buyer_message IS null";
      const [results2] = await db.query(sqlUncomment, [req.query.customer_id]);
      output.filter = "notyet";
      results2.map((product) => {
        const img = product.image_path.trim().split(",")[0];
        product.image_path = img;
      });
      output.rows = results2;
      console.log('results2',results2)
      return output;
  }
}
router.get("/", async (req, res) => {
  const output = await Comment(req);
  console.log('bbb')
  res.json(output);
});

router.post("/",async(req,res)=>{
  // const data = {...req.body}
  // console.log('req.body',req.body)
  // console.log('[ req.body[0]',[ req.body[0])
  const sql = "UPDATE `order_evaluations` SET `buyer_message` = ? WHERE `comment_id`= ?"
  const [{affectedRows,changedRows}] = await db.query(sql,[ req.body.buyer_message , req.query.comment_id ]);

  res.json({
    success:!!changedRows,
    affectedRows,
    changedRows,
  });
  console.log('ccc')
})

module.exports = router;
