.class public Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.super Lorg/wikipedia/model/BaseModel;
.source "MwQueryResult.java"

# interfaces
.implements Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;
    }
.end annotation


# instance fields
.field private amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authmanagerinfo"
    .end annotation
.end field

.field private converted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;",
            ">;"
        }
    .end annotation
.end field

.field private echomarkread:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

.field private echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

.field private editorTaskCounts:Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wikimediaeditortaskscounts"
    .end annotation
.end field

.field private generalSiteInfo:Lorg/wikipedia/settings/SiteInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "general"
    .end annotation
.end field

.field private notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;"
        }
    .end annotation
.end field

.field private redirects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;",
            ">;"
        }
    .end annotation
.end field

.field private tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

.field private unreadnotificationpages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;",
            ">;"
        }
    .end annotation
.end field

.field private userContributions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usercontribs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/UserContribution;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userinfo"
    .end annotation
.end field

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/ListUserResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method

.method private resolveConvertedTitles()V
    .locals 6

    .line 164
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->converted:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;

    .line 168
    iget-object v2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 169
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->to()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->from()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$ConvertedTitle;->to()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private resolveRedirectedTitles()V
    .locals 6

    .line 146
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 150
    iget-object v2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->redirects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;

    .line 153
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->to()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->from()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Redirect;->toFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->appendTitleFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public captchaId()Ljava/lang/String;
    .locals 5

    .line 80
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->amInfo:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;->requests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;

    .line 82
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CaptchaAuthenticationRequest"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields()Ljava/util/Map;

    move-result-object v1

    const-string v2, "captchaId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public createAccountToken()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->access$100(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public csrfToken()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->access$000(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public editorTaskCounts()Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->editorTaskCounts:Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;

    return-object v0
.end method

.method public firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEchoMarkSeen()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->echomarkseen:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MarkReadResponse;

    return-object v0
.end method

.method public getUserResponse(Ljava/lang/String;)Lorg/wikipedia/dataclient/mwapi/ListUserResponse;
    .locals 4

    .line 91
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;

    .line 94
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/ListUserResponse;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEditProtected()Z
    .locals 5

    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/page/Protection;

    .line 132
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/Protection;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "edit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getGroups()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/Protection;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public langLinks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langLinks()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;

    .line 109
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;->lang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 110
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public loginToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->access$200(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public notifications()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    return-object v0
.end method

.method public pages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    return-object v0
.end method

.method public postProcess()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->resolveConvertedTitles()V

    .line 142
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->resolveRedirectedTitles()V

    return-void
.end method

.method public siteInfo()Lorg/wikipedia/settings/SiteInfo;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->generalSiteInfo:Lorg/wikipedia/settings/SiteInfo;

    return-object v0
.end method

.method public unreadNotificationWikis()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadnotificationpages:Ljava/util/Map;

    return-object v0
.end method

.method public userContributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/UserContribution;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    return-object v0
.end method
