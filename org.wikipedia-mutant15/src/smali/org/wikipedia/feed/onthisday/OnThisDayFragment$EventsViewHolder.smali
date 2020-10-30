.class Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnThisDayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventsViewHolder"
.end annotation


# instance fields
.field private descTextView:Landroid/widget/TextView;

.field private pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;

.field private yearContainer:Landroid/view/View;

.field private yearSpace:Landroid/view/View;

.field private yearTextView:Landroid/widget/TextView;

.field private yearsInfoTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 310
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0903f0

    .line 311
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->descTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const p1, 0x7f0904d8

    .line 313
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearTextView:Landroid/widget/TextView;

    const p1, 0x7f0904da

    .line 314
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearsInfoTextView:Landroid/widget/TextView;

    const p1, 0x7f0902e6

    .line 315
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0904dc

    .line 316
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearContainer:Landroid/view/View;

    const p1, 0x7f0904dd

    .line 317
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearSpace:Landroid/view/View;

    .line 318
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 319
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->setRecycler()V

    return-void
.end method

.method private setPads()V
    .locals 5

    const/high16 v0, 0x41a80000    # 21.0f

    .line 345
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42180000    # 38.0f

    .line 346
    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 347
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 349
    iget-object v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->descTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 350
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 351
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setPagesRecycler(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V
    .locals 4

    .line 355
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView$RecyclerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;Z)V

    .line 357
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setRecycler()V
    .locals 4

    .line 323
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 325
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->pagesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->access$100(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setFields(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V
    .locals 2

    .line 330
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->setPagesRecycler(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V

    .line 331
    invoke-direct {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->setPads()V

    .line 332
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->descTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->yearToStringWithEra(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearsInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getYearDifferenceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 335
    invoke-virtual {p2}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result v1

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 336
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearSpace:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->yearSpace:Landroid/view/View;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
