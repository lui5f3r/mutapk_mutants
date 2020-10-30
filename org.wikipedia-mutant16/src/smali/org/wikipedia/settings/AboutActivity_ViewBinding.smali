.class public Lorg/wikipedia/settings/AboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/settings/AboutActivity;

.field private view7f09038c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/settings/AboutActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/settings/AboutActivity_ViewBinding;-><init>(Lorg/wikipedia/settings/AboutActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/settings/AboutActivity;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->target:Lorg/wikipedia/settings/AboutActivity;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090010

    const-string v2, "field \'contributorsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/AboutActivity;->contributorsTextView:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090013

    const-string v2, "field \'translatorsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/AboutActivity;->translatorsTextView:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09004d

    const-string v2, "field \'librariesTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/AboutActivity;->librariesTextView:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09000e

    const-string v2, "field \'appLicenseTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/AboutActivity;->appLicenseTextView:Landroid/widget/TextView;

    const v0, 0x7f09038c

    const-string v1, "field \'feedbackTextView\' and method \'onSendFeedbackClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'feedbackTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/wikipedia/settings/AboutActivity;->feedbackTextView:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->view7f09038c:Landroid/view/View;

    .line 38
    new-instance v0, Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/settings/AboutActivity_ViewBinding$1;-><init>(Lorg/wikipedia/settings/AboutActivity_ViewBinding;Lorg/wikipedia/settings/AboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090015

    const-string v2, "field \'wmfTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/settings/AboutActivity;->wmfTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->target:Lorg/wikipedia/settings/AboutActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->target:Lorg/wikipedia/settings/AboutActivity;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->contributorsTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->translatorsTextView:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->librariesTextView:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->appLicenseTextView:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->feedbackTextView:Landroid/widget/Button;

    .line 59
    iput-object v1, v0, Lorg/wikipedia/settings/AboutActivity;->wmfTextView:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->view7f09038c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lorg/wikipedia/settings/AboutActivity_ViewBinding;->view7f09038c:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
