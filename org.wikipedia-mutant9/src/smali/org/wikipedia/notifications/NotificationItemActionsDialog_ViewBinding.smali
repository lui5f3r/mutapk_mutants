.class public Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;
.super Ljava/lang/Object;
.source "NotificationItemActionsDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

.field private view7f09028e:Landroid/view/View;

.field private view7f090291:Landroid/view/View;

.field private view7f090294:Landroid/view/View;

.field private view7f090299:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog;Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a3

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->titleView:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09029a

    const-string v2, "field \'archiveIconView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveIconView:Landroid/widget/ImageView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09029b

    const-string v2, "field \'archiveTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveTextView:Landroid/widget/TextView;

    const v0, 0x7f09028e

    const-string v1, "field \'primaryView\' and method \'onActionClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryView:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f09028e:Landroid/view/View;

    .line 40
    new-instance v1, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$1;-><init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;Lorg/wikipedia/notifications/NotificationItemActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f09028f

    const-string v2, "field \'primaryImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090290

    const-string v2, "field \'primaryTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryTextView:Landroid/widget/TextView;

    const v0, 0x7f090291

    const-string v1, "field \'secondaryView\' and method \'onActionClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryView:Landroid/view/View;

    .line 50
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090291:Landroid/view/View;

    .line 51
    new-instance v1, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$2;-><init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;Lorg/wikipedia/notifications/NotificationItemActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090292

    const-string v2, "field \'secondaryImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090293

    const-string v2, "field \'secondaryTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryTextView:Landroid/widget/TextView;

    const v0, 0x7f090294

    const-string v1, "field \'tertiaryView\' and method \'onActionClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryView:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090294:Landroid/view/View;

    .line 62
    new-instance v1, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$3;-><init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;Lorg/wikipedia/notifications/NotificationItemActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090295

    const-string v2, "field \'tertiaryImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090296

    const-string v2, "field \'tertiaryTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryTextView:Landroid/widget/TextView;

    const v0, 0x7f090299

    const-string v1, "method \'onArchiveClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 71
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090299:Landroid/view/View;

    .line 72
    new-instance v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding$4;-><init>(Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;Lorg/wikipedia/notifications/NotificationItemActionsDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    .line 87
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->titleView:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveIconView:Landroid/widget/ImageView;

    .line 89
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->archiveTextView:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryView:Landroid/view/View;

    .line 91
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 92
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->primaryTextView:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryView:Landroid/view/View;

    .line 94
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->secondaryTextView:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryView:Landroid/view/View;

    .line 97
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 98
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->tertiaryTextView:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f09028e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f09028e:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090291:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090291:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090294:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090294:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090299:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationItemActionsDialog_ViewBinding;->view7f090299:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
