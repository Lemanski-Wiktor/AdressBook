using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace AdressBook
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblGuestOnline.Text = Application.Get("usersOnline").ToString();
            lblGuestTotal.Text = Application.Get("usersTotal").ToString();
        }
        private void AddXm1Content(XmlDocument doc, XmlElement element,
        string tag, string value)
        {
            XmlElement newElement = doc.CreateElement(tag);
            XmlText text = doc.CreateTextNode(value);
            element.AppendChild(newElement);
            newElement.AppendChild(text);

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (txbName.Text != String.Empty && txbEmail.Text != String.Empty
                && txbDescription.Text != String.Empty) {

                    XmlDocument document = new XmlDocument();
                    document.Load(Server.MapPath("book.xm1"));
                    XmlElement newElement;
                    newElement = document.CreateElement("guest");
                    document.DocumentElement.PrependChild(newElement);
                    AddXm1Content(document, newElement, "name", txbName.Text);
                    AddXm1Content(document, newElement, "email", txbEmail.Text);
                    AddXm1Content(document, newElement, "description", txbDescription.Text);
                    document.Save(Server.MapPath(("book.xm1")));
                    Response.Redirect("WebForm2.aspx");
                }
                else
                {
                    Label1.Text = "There were no data";
                }
            }
        }
        
    }
}