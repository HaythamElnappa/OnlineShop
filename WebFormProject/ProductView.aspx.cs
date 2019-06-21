using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProject
{
    public partial class ProductView : System.Web.UI.Page
    {
        public static void fillCategory(DropDownList d)
        {
            d.DataSource = Category.SelectAll();
            d.DataTextField = "Name";
            d.DataValueField = "Cat_Id";
            d.DataBind();
            d.Items.Insert(0, "choose...");
        }

        public static void fillProduct(DropDownList d, int id)
        {
            d.DataSource = Product.SelectByCategory(id);
            d.DataTextField = "Name";
            d.DataValueField = "P_Id";
            d.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGridAllProduct();
                fillListCategory();
                ProductView.fillCategory(listCategoryedite);
                ProductView.fillCategory(listCategoryedite2);
                ProductView.fillCategory(listCategoryRemove);
                ProductView.fillCategory(listCategorySearch);

            }
        }


        private void fillListCategory()
        {
            listCategory.DataSource = Category.SelectAll();
            listCategory.DataTextField = "Name";
            listCategory.DataValueField = "Cat_Id";
            listCategory.DataBind();
            listCategory.Items.Insert(0, "choose...");
            listCategory.Items.Insert(1, "New Category");
        }



        private void fillGridAllProduct()
        {
            gridAllproduct.DataSource = Product.SelectAllForGridView();
            gridAllproduct.DataBind();
        }



        protected void btnAdd_Click(object sender, EventArgs e)
        {

            string imgFile = Path.GetFileName(upimg.PostedFile.FileName);
            upimg.SaveAs(@"D:\haytham\" + imgFile);


            string x;
            if (listCategory.SelectedValue == "New Category")
            {
                x = txtNewCategory.Text;
                Category.Insert(new Category_Attripute() { Name = x });
                Product.Insert(new Product_Attripute() { Name = pname.Text, Cat_Id = listCategory.Items.Count - 1, Description = pdiscription.Text, Image_path = imgFile, Price = int.Parse(pprice.Text), Promotion = ppromosion.Text, Quantity = int.Parse(pquantity.Text) });
            }
            else
            {
                Product.Insert(new Product_Attripute() { Name = pname.Text, Cat_Id = int.Parse(listCategory.SelectedValue), Description = pdiscription.Text, Image_path = imgFile, Price = int.Parse(pprice.Text), Promotion = ppromosion.Text, Quantity = int.Parse(pquantity.Text) });

            }
            fillGridAllProduct();


        }

        protected void btnEditProduct_Click(object sender, EventArgs e)
        {
            int x = Product.Update(new Product_Attripute() { Name = txtpname.Text, Cat_Id = int.Parse(listCategoryedite2.SelectedValue), Description = Txtpdisc.Text, Image_path = imgp.PostedFile.FileName, Price = int.Parse(Txtpprice.Text), Promotion = txtppromosion.Text, Quantity = int.Parse(txtpquantity.Text) }, int.Parse(listProductedite.SelectedValue));
            fillGridAllProduct();
        }

        protected void listCategoryedite_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductView.fillProduct(listProductedite, int.Parse(listCategoryedite.SelectedValue));
        }

        protected void listCategoryRemove_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductView.fillProduct(listproductRemove, int.Parse(listCategoryRemove.SelectedValue));

        }

        protected void btnRemoveProduct_Click(object sender, EventArgs e)
        {
            Product.Delete(int.Parse(listproductRemove.SelectedValue));
            fillGridAllProduct();
        }

        protected void listCategorySearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductView.fillProduct(listProductSearch, int.Parse(listCategorySearch.SelectedValue));
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            gridsearch.DataSource = Product.SelectByIdForGridView(int.Parse(listProductSearch.SelectedValue));
            gridsearch.DataBind();
            DataTable dt = Product.getDiscription(int.Parse(listProductSearch.SelectedValue));
            des.InnerHtml = "DESCRIPTION";
            pdes.InnerHtml = dt.Rows[0]["Description"].ToString();
            imgproduct.ImageUrl = @"D:\haytham\icon2.png";
            /*$"D:\\haytham\\{dt.Rows[0]["Image_path"].ToString()}"*/
        }

        protected void listCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listCategory.SelectedValue == "New Category")
            {
                divCategory.Visible = true;
            }
            else
            {
                divCategory.Visible = false;
            }
        }
    }
}