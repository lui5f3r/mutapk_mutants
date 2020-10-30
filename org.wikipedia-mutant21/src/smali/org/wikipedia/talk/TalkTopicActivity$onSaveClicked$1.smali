.class public final Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lorg/wikipedia/csrf/CsrfTokenClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $subject:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            ")V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->$subject:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->$body:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "caught"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$onSaveError(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->$subject:Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->$body:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/talk/TalkTopicActivity;->access$doSave(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public twoFactorPrompt()V
    .locals 4

    .line 294
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    new-instance v1, Lorg/wikipedia/login/LoginClient$LoginFailedException;

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/wikipedia/login/LoginClient$LoginFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$onSaveError(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/Throwable;)V

    return-void
.end method
