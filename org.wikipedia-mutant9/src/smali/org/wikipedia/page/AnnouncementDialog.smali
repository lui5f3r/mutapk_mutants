.class public final Lorg/wikipedia/page/AnnouncementDialog;
.super Landroid/app/AlertDialog;
.source "AnnouncementDialog.kt"

# interfaces
.implements Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;


# instance fields
.field private final announcement:Lorg/wikipedia/feed/announcement/Announcement;

.field private final funnel:Lorg/wikipedia/analytics/FeedFunnel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/feed/announcement/Announcement;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announcement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/wikipedia/page/AnnouncementDialog;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    .line 26
    new-instance p2, Lorg/wikipedia/analytics/FeedFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/wikipedia/analytics/FeedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object p2, p0, Lorg/wikipedia/page/AnnouncementDialog;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    .line 29
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lorg/wikipedia/feed/announcement/AnnouncementCard;

    iget-object v1, p0, Lorg/wikipedia/page/AnnouncementDialog;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-direct {p1, v1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->setCard(Lorg/wikipedia/feed/announcement/AnnouncementCard;)V

    .line 32
    invoke-virtual {v0, p0}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;->setCallback(Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private final dismissDialog()V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/wikipedia/page/AnnouncementDialog;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setAnnouncementShownDialogs(Ljava/util/Set;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getAnnouncement()Lorg/wikipedia/feed/announcement/Announcement;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/page/AnnouncementDialog;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    return-object v0
.end method

.method public onAnnouncementNegativeAction(Lorg/wikipedia/feed/model/Card;)V
    .locals 2

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lorg/wikipedia/page/AnnouncementDialog;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    sget-object v0, Lorg/wikipedia/feed/model/CardType;->ARTICLE_ANNOUNCEMENT:Lorg/wikipedia/feed/model/CardType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/analytics/FeedFunnel;->dismissCard(Lorg/wikipedia/feed/model/CardType;I)V

    .line 61
    invoke-direct {p0}, Lorg/wikipedia/page/AnnouncementDialog;->dismissDialog()V

    return-void
.end method

.method public onAnnouncementPositiveAction(Lorg/wikipedia/feed/model/Card;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#login"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "navigation"

    invoke-static {p2, v0}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/settings/SettingsActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#customizefeed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/Card;->type()Lorg/wikipedia/feed/model/CardType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result p1

    invoke-static {v0, p1}, Lorg/wikipedia/feed/configure/ConfigureActivity;->newIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#languages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ANNOUNCEMENT:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {v0}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    .line 55
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/page/AnnouncementDialog;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    sget-object p2, Lorg/wikipedia/feed/model/CardType;->ARTICLE_ANNOUNCEMENT:Lorg/wikipedia/feed/model/CardType;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/wikipedia/analytics/FeedFunnel;->cardClicked(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lorg/wikipedia/page/AnnouncementDialog;->dismissDialog()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 39
    iget-object v0, p0, Lorg/wikipedia/page/AnnouncementDialog;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    sget-object v1, Lorg/wikipedia/feed/model/CardType;->ARTICLE_ANNOUNCEMENT:Lorg/wikipedia/feed/model/CardType;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    const-string v3, "WikipediaApp.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/FeedFunnel;->cardShown(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
