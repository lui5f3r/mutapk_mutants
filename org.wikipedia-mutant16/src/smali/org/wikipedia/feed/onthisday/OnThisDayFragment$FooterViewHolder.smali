.class Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnThisDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 366
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090075

    .line 367
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 368
    new-instance p2, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$FooterViewHolder$QwiR3IJnrHDanSircejiORD-3tQ;

    invoke-direct {p2, p0}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayFragment$FooterViewHolder$QwiR3IJnrHDanSircejiORD-3tQ;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OnThisDayFragment$FooterViewHolder(Landroid/view/View;)V
    .locals 1

    .line 369
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 370
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iget-object p1, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
