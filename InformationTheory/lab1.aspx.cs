using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lab1 : Page
{
    
    int vowels;
    int consonants;
    int result;

    int Factorial(int n)
    {
        if (n <= 1) return 1;
        return n * Factorial(n - 1);
    }

    void View(bool b)
    {
        if (b)
        {
            string s = TextBox1.Text;  // прямой доступ
            vowels = int.Parse(s);
            s = TextBox2.Text;
            consonants = int.Parse(s);
        }
        else
        {
            Label1.Text = result.ToString();
        }
    }

    protected void cmdGo_Click(object sender, EventArgs e)
    {
        ViewModel();
    }

    public void ViewModel()
    {
        View(true);
        Model();
        View(false);
    }

    void Model()
    {
        result = Factorial(vowels) * Factorial(consonants);
    }
}