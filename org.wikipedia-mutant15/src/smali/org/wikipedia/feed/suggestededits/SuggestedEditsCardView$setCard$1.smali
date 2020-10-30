.class final Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->setCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->access$getCallback(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->access$getCallback(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$setCard$1;->this$0:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView$Callback;->onSuggestedEditsCardClick(Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)V

    :cond_0
    return-void
.end method
