.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$previousPage(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    return-void
.end method
