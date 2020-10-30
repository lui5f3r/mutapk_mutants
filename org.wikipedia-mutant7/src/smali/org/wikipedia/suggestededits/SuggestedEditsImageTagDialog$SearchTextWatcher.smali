.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagDialog.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$setCurrentSearchTerm$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    sget p2, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-static {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$getSearchRunnable$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    sget p2, Lorg/wikipedia/R$id;->imageTagsSearchText:I

    invoke-virtual {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$SearchTextWatcher;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-static {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$getSearchRunnable$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
