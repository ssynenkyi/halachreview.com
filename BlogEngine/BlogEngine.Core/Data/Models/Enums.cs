using System.ComponentModel;

namespace BlogEngine.Core.Data.Models
{
    /// <summary>
    /// Post type
    /// </summary>
    public enum PostType
    {
        /// <summary>
        /// All posts
        /// </summary>
        All,
        /// <summary>
        /// Drafts
        /// </summary>
        Draft,
        /// <summary>
        /// Published posts
        /// </summary>
        Published
    }

    /// <summary>
    /// Type of deleted object
    /// </summary>
    public enum TrashType
    {
        /// <summary>
        ///     Any deleted object
        /// </summary>
        All,
        /// <summary>
        ///     Deleted comment
        /// </summary>
        Comment,
        /// <summary>
        ///     Deleted post
        /// </summary>
        Post,
        /// <summary>
        ///     Deleted page
        /// </summary>
        Page
    }

    /// <summary>
    /// Comment type.
    /// </summary>
    public enum CommentType
    {
        /// <summary>
        ///     Pending Comment Type
        /// </summary>
        Pending,
        /// <summary>
        ///     Approved Comment Type
        /// </summary>
        Approved,
        /// <summary>
        ///     Pingbacks and trackbacks Comment Type
        /// </summary>
        Pingback,
        /// <summary>
        ///     Spam Comment Type
        /// </summary>
        Spam,
        /// <summary>
        /// All comments
        /// </summary>
        All
    }
    /// <summary>
    /// Custom Search Type.
    /// </summary>
    public enum SearchByField
    {
        [Description("By Chapter/Verse(s)")]
        ChapterVerses = 0,
        [Description("By Title")]
        Title = 1,
        [Description("By Content")]
        Content = 2,
        [Description("By Summary")]
        Summary =3,
    }
}