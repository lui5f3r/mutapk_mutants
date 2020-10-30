.class public Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;
.super Ljava/lang/Object;
.source "MenuNavTabDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/navtab/MenuNavTabDialog;

.field private view7f090211:Landroid/view/View;

.field private view7f090215:Landroid/view/View;

.field private view7f090216:Landroid/view/View;

.field private view7f090217:Landroid/view/View;

.field private view7f090218:Landroid/view/View;

.field private view7f090219:Landroid/view/View;

.field private view7f09021a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/navtab/MenuNavTabDialog;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->target:Lorg/wikipedia/navtab/MenuNavTabDialog;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090214

    const-string v2, "field \'accountNameView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountNameView:Landroid/widget/TextView;

    const v0, 0x7f090217

    const-string v1, "field \'loginLogoutButton\' and method \'onLoginClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'loginLogoutButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090217:Landroid/view/View;

    .line 44
    new-instance v0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$1;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090212

    const-string v2, "field \'accountAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    const v0, 0x7f090218

    const-string v1, "field \'notificationsContainer\' and method \'onNotificationsClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'notificationsContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/navtab/MenuNavTabDialog;->notificationsContainer:Landroid/view/ViewGroup;

    .line 53
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090218:Landroid/view/View;

    .line 54
    new-instance v0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$2;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021a

    const-string v1, "field \'talkContainer\' and method \'onTalkClick\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'talkContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/navtab/MenuNavTabDialog;->talkContainer:Landroid/view/ViewGroup;

    .line 62
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f09021a:Landroid/view/View;

    .line 63
    new-instance v0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$3;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090219

    const-string v1, "method \'onSettingsClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090219:Landroid/view/View;

    .line 71
    new-instance v1, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$4;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090215

    const-string v1, "method \'onDonateClick\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090215:Landroid/view/View;

    .line 79
    new-instance v1, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$5;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090211

    const-string v1, "method \'onAboutClick\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090211:Landroid/view/View;

    .line 87
    new-instance v1, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$6;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090216

    const-string v1, "method \'onHelpClick\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 94
    iput-object p2, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090216:Landroid/view/View;

    .line 95
    new-instance v0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding$7;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;Lorg/wikipedia/navtab/MenuNavTabDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->target:Lorg/wikipedia/navtab/MenuNavTabDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->target:Lorg/wikipedia/navtab/MenuNavTabDialog;

    .line 110
    iput-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountNameView:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->loginLogoutButton:Landroid/widget/Button;

    .line 112
    iput-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->accountAvatar:Landroid/widget/ImageView;

    .line 113
    iput-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->notificationsContainer:Landroid/view/ViewGroup;

    .line 114
    iput-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->talkContainer:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090217:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090217:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090218:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090218:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f09021a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f09021a:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090219:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090219:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090215:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090215:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090211:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090211:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090216:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lorg/wikipedia/navtab/MenuNavTabDialog_ViewBinding;->view7f090216:Landroid/view/View;

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
