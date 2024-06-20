public class News
{
    public int NewsID { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public string Author { get; set; }
    public string PubDate { get; set; }
    public string ImageUrl { get; set; }
    public string Link { get; set; } // Link alanı eklendi

    public News(int newsID, string title, string description, string category, string author, string pubDate, string imageUrl)
    : this(newsID, title, description, category, author, pubDate, imageUrl, "No Link")
    {
    }


    public News(int newsID, string title, string description, string category, string author, string pubDate, string imageUrl, string link)
    {
        NewsID = newsID;
        Title = title;
        Description = description;
        Category = category;
        Author = author;
        PubDate = pubDate;
        ImageUrl = imageUrl;
        Link = link; // Link alanı set ediliyor
    }
}
