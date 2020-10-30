.class public Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnThisDayPagesViewHolder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final isSingleCard:Z

.field pageItemDescTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageItemTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field parent:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;Lcom/google/android/material/card/MaterialCardView;Lorg/wikipedia/dataclient/WikiSite;Z)V
    .locals 1

    .line 55
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 56
    invoke-static {p0, p3}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 57
    iput-object p4, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 58
    iput-boolean p5, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->isSingleCard:Z

    .line 59
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 61
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->parent:Landroid/view/View;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-object p0
.end method

.method private setImage(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemImageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method


# virtual methods
.method onBaseViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-boolean v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->isSingleCard:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 87
    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setFields(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 66
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemDescTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemDescTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->pageItemTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method showOverflowMenu(Landroid/view/View;)Z
    .locals 4
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 92
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-boolean v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->isSingleCard:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 95
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;

    invoke-direct {v2, p0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;Lorg/wikipedia/history/HistoryEntry;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v2}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;-><init>(Landroid/view/View;ZLorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;)V

    .line 125
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->show(Lorg/wikipedia/page/PageTitle;)V

    return v3
.end method
