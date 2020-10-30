.class public final Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReplyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 249
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget p2, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p1, p2}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "replySubjectLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget p3, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p1, p3}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p3, "replyTextLayout"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
