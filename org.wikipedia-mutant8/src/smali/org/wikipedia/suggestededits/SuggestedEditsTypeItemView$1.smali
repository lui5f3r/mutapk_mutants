.class final Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$1;
.super Ljava/lang/Object;
.source "SuggestedEditsTypeItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->access$getCallback$p(Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;)Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;->access$getEditType$p(Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView;)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTypeItemView$Callback;->onTypeItemClick(I)V

    :cond_0
    return-void
.end method
