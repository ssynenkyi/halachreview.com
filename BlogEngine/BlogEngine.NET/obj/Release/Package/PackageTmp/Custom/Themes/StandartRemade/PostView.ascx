<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>
<%@ Import Namespace="BlogEngine.Core" %>
<% if (Location != ServingLocation.SinglePost)
    {%>
<article class="post post-home" id="post<%=Index %>">
    <%} %>
    <% if (Location == ServingLocation.SinglePost)
        {%>
    <article class="post" id="post<%=Index %>">
        <%} %>
        <header class="post-header">
            <h2 class="post-title">
                <a href="<%=Post.RelativeOrAbsoluteLink %>"><%=Server.HtmlEncode(Post.Title) %>
                    <span class="post-title-chapter">&nbsp &nbsp Chapter #: <%= Post.ChapterNumber %></span></a>
            </h2>
            <span class="post-chapter">Chapter #: <%= Post.ChapterNumber %></span>
            <div class="post-info clearfix">
                <span class="post-date"><i class="icon-calendar"></i><%=Post.DateCreated.ToString("dd MMMM yyyy") %></span>
                <span class="post-author"><i class=" icon-user"></i><%=Post.AuthorProfile != null ? Utils.RemoveIllegalCharacters(Post.AuthorProfile.DisplayName) : Utils.RemoveIllegalCharacters(Post.Author) %></span>
                <span class="post-category">Verse(s): <%= Post.Verses %></span>

                <% if (BlogSettings.Instance.CommentProvider == BlogSettings.CommentsBy.Disqus)
                    { %>
                <%--     <a rel="nofollow" class="pull-right " href="<%=Post.RelativeOrAbsoluteLink %>#comment">
                    <i class="icon-comment"></i><span class="disqus-comment-count" data-disqus-url="<%=Post.AbsoluteLink %>"></span>
                </a>--%>
                <script type="text/javascript">
                    (function () {
                        var s = document.createElement('script'); s.async = true; s.type = 'text/javascript';
                        s.src = '//<%= BlogSettings.Instance.DisqusWebsiteName %>.disqus.com/count.js';
                        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
                    }());
                </script>
                <%}
                    else if (BlogSettings.Instance.CommentProvider == BlogSettings.CommentsBy.Facebook)
                    {%>
                <%--  <a rel="nofollow" class="pull-right " href="<%=Post.RelativeOrAbsoluteLink %>#comment">
                    <i class="icon-comment"></i><span class="fb-comments-count" data-href="<%=Post.AbsoluteLink %>"></span>
                </a>--%>
                <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return; js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
                </script>
                <%}
                    else
                    {%>
                <%--   <a rel="nofollow" class="pull-right " href="<%=Post.RelativeOrAbsoluteLink %>#comment">
                    <i class="icon-comment"></i>(<%=Post.ApprovedComments.Count %>)
                    </a>--%>
                <%} %>
            </div>
        </header>
       <%-- <section class="post-body-short text">
            <asp:PlaceHolder ID="BodyContentShort" runat="server" />
        </section>--%>

        <section class="post-body text">
            <div class="post-content">
                <asp:PlaceHolder ID="BodyContent" runat="server" />
            </div>
        </section>
        <section class="post-summary text">
            <div class="post-summary-title">Summary:</div>
            <asp:PlaceHolder ID="BodySummary" runat="server" />
        </section>
        <section class="post-links">
            <%=AdminLinks %>
        </section>
    </article>
