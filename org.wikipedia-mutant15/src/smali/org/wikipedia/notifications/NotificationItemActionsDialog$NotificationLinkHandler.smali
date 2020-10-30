.class Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "NotificationItemActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationItemActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationLinkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

.field private wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog;Landroid/content/Context;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->this$0:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    .line 156
    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method

.method public onExternalLinkClicked(Landroid/net/Uri;)V
    .locals 3

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->this$0:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->this$0:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->access$000(Lorg/wikipedia/notifications/NotificationItemActionsDialog;)Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;->onActionPageTitle(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    return-void
.end method

.method public onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setWikiSite(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method
