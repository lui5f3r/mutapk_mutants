.class Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnThisDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = 0x1

.field private static final VIEW_TYPE_ITEM:I


# instance fields
.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 261
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 262
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 280
    instance-of v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    if-eqz v0, :cond_1

    .line 281
    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    if-lez p2, :cond_0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->events:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    .line 282
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->setFields(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V

    .line 283
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)Lorg/wikipedia/analytics/OnThisDayFunnel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-static {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)Lorg/wikipedia/analytics/OnThisDayFunnel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/wikipedia/analytics/OnThisDayFunnel;->scrolledToPosition(I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0112

    .line 269
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 270
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;)V

    return-object p2

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0102

    .line 273
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 274
    new-instance p2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {p2, v0, p1, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;Lorg/wikipedia/dataclient/WikiSite;)V

    return-object p2
.end method
