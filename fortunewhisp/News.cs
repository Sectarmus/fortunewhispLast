public class News
{
    public int NewsID { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }

    public string ImageUrl { get; set; }
    public string Link { get; set; } // Link alanı eklendi

    public News(int newsID, string title, string description, string imageUrl)
    : this(newsID, title, description, imageUrl, "No Link")
    {
    }


    public News(int newsID, string title, string description, string imageUrl, string link)
    {
        NewsID = newsID;
        Title = title;
        Description = description;
        ImageUrl = imageUrl;
        Link = link; // Link alanı set ediliyor
    }
}
