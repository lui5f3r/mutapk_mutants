.class Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;
.super Ljava/lang/Object;
.source "DescriptionEditFragment.java"

# interfaces
.implements Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->getEditTokenThenSave(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;


# direct methods
.method constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;->this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Throwable;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;->this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->access$800(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;->this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    invoke-static {v0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->access$700(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/String;)V

    return-void
.end method

.method public twoFactorPrompt()V
    .locals 4

    .line 306
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;->this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    new-instance v1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;->this$1:Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;

    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100170

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 306
    invoke-static {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->access$800(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/Throwable;Z)V

    return-void
.end method
