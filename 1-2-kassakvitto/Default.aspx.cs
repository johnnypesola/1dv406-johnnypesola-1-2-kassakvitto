using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            float parsedValue;
            Model.Receipt receipt;

            // Only execute code if form data validated
            if (IsValid)
            {
                // Try parse userinput
                if(float.TryParse(UserInputTextbox.Text, out parsedValue))
                {
                    // Create new Receipt
                    receipt = new Model.Receipt(parsedValue);

                    // Set new Receipt values to literals for display on page.
                    SubtotalLiteral.Text = String.Format("{0:c}", receipt.Subtotal);
                    MoneyOffLiteral.Text = String.Format("{0:c}", receipt.MoneyOff);
                    DiscountRateLiteral.Text = String.Format("{0:p0}", receipt.DiscountRate);
                    TotalLiteral.Text = String.Format("{0:c}", receipt.Total);

                    // Display Receipt
                    ReceiptContainer.Visible = true;
                }
            }
        }
    }
}