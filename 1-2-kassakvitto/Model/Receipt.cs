using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_2_kassakvitto.Model
{
    public class Receipt
    {
        private double _subtotal; // Total köpsumma

        // Properties
        public double DiscountRate { get; set; }

        public double MoneyOff { get; set; }

        public double Subtotal { get; set; }

        public double Total { get; set; }

        // Constructor
        public Receipt(double Subtotal)
        {
            this.Calculate(Subtotal);
        }

        // Methods
        public void Calculate(double Subtotal)
        {
            this.Subtotal = Subtotal;

            if(Subtotal <= 0) {
                throw new ArgumentOutOfRangeException("Köpesumman måste vara högre än 0");
            }
            else if (Subtotal < 500)
            {
                // 0 % Discount
                this.DiscountRate = 0;
            }
            else if (Subtotal < 1000)
            {
                // 5 % Discount
                this.DiscountRate = 0.05;
            }
            else if (Subtotal < 5000)
            {
                // 10 % Discount
                this.DiscountRate = 0.1;
            }
            else if (Subtotal >= 5000)
            {
                // 15 % Discount
                this.DiscountRate = 0.15;
            }
            else
            {
                throw new Exception("Köpesumman hade ett ej tillåtet värde.");
            }

            this.MoneyOff = Subtotal * this.DiscountRate;
            this.Total = Subtotal - this.MoneyOff;
        }
    }
}