.class Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnThisDayCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final isSingleCard:Z

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Z)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->pages:Ljava/util/List;

    .line 98
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 99
    iput-boolean p4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->isSingleCard:Z

    .line 100
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 90
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->onBindViewHolder(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->pages:Ljava/util/List;

    .line 114
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->setFields(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;
    .locals 7

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0084

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v6, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object v3, p2

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    iget-object v4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    iget-boolean v5, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;->isSingleCard:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;Lcom/google/android/material/card/MaterialCardView;Lorg/wikipedia/dataclient/WikiSite;Z)V

    return-object v6
.end method
