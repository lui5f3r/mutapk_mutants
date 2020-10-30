.class public Lorg/wikipedia/notifications/NotificationItemActionsDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "NotificationItemActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;,
        Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;
    }
.end annotation


# static fields
.field private static final ARG_NOTIFICATION:Ljava/lang/String; = "notification"


# instance fields
.field archiveIconView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field archiveTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private linkHandler:Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;

.field private notification:Lorg/wikipedia/notifications/Notification;

.field primaryImageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryImageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tertiaryImageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tertiaryTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tertiaryView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/notifications/NotificationItemActionsDialog;)Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->callback()Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    move-result-object p0

    return-object p0
.end method

.method private callback()Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;
    .locals 1

    .line 195
    const-class v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    return-object v0
.end method

.method public static newInstance(Lorg/wikipedia/notifications/Notification;)Lorg/wikipedia/notifications/NotificationItemActionsDialog;
    .locals 3

    .line 64
    new-instance v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    invoke-direct {v0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "notification"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setUpViewForLink(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lorg/wikipedia/notifications/Notification$Link;)V
    .locals 1

    .line 138
    invoke-virtual {p4}, Lorg/wikipedia/notifications/Notification$Link;->getTooltip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p4}, Lorg/wikipedia/notifications/Notification$Link;->getTooltip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p4}, Lorg/wikipedia/notifications/Notification$Link;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    invoke-virtual {p4}, Lorg/wikipedia/notifications/Notification$Link;->getIcon()Ljava/lang/String;

    move-result-object p3

    const-string v0, "userAvatar"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f08012d

    .line 144
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const p3, 0x7f080094

    .line 146
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 148
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method onActionClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification$Link;

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09028e

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090291

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 128
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 132
    :cond_2
    new-instance v2, Lorg/wikipedia/analytics/NotificationFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-direct {v2, v3, v4}, Lorg/wikipedia/analytics/NotificationFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/notifications/Notification;)V

    invoke-virtual {v2, p1, v0}, Lorg/wikipedia/analytics/NotificationFunnel;->logAction(ILorg/wikipedia/notifications/Notification$Link;)V

    .line 133
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->linkHandler:Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;

    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;->setWikiSite(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 134
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->linkHandler:Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;

    const/4 v0, 0x0

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onArchiveClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 119
    invoke-direct {p0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->callback()Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-interface {p1, v0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;->onArchive(Lorg/wikipedia/notifications/Notification;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0110

    .line 73
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->unbinder:Lbutterknife/Unbinder;

    .line 75
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "notification"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v0, Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/notifications/Notification;

    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    .line 76
    new-instance p2, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;-><init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->linkHandler:Lorg/wikipedia/notifications/NotificationItemActionsDialog$NotificationLinkHandler;

    .line 78
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->titleView:Landroid/widget/TextView;

    iget-object p3, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p3}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/notifications/Notification$Contents;->getHeader()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    const/16 p3, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    .line 83
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/Notification$Link;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryView:Landroid/view/View;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/Notification$Link;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->setUpViewForLink(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lorg/wikipedia/notifications/Notification$Link;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    .line 90
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 91
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryView:Landroid/view/View;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/notifications/Notification$Link;

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->setUpViewForLink(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lorg/wikipedia/notifications/Notification$Link;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_1
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    .line 97
    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 98
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryView:Landroid/view/View;

    iget-object p3, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->notification:Lorg/wikipedia/notifications/Notification;

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/Notification$Link;

    invoke-direct {p0, p2, p3, v1, v0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->setUpViewForLink(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lorg/wikipedia/notifications/Notification$Link;)V

    goto :goto_2

    .line 100
    :cond_3
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_2
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->callback()Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    move-result-object p3

    invoke-interface {p3}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;->isShowingArchived()Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f08012a

    goto :goto_3

    :cond_4
    const p3, 0x7f08008e

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->callback()Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;

    move-result-object p3

    invoke-interface {p3}, Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;->isShowingArchived()Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f1001ef

    goto :goto_4

    :cond_5
    const p3, 0x7f1001ed

    :goto_4
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->unbinder:Lbutterknife/Unbinder;

    .line 115
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method
