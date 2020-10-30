.class public abstract Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;
.super Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
.source "AbstractTabRecyclerAdapter.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/Tab$Callback;
.implements Lde/mrapp/android/tabswitcher/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
        "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
        "Ljava/lang/Integer;",
        ">;",
        "Lde/mrapp/android/tabswitcher/Tab$Callback;",
        "Lde/mrapp/android/tabswitcher/model/Model$Listener;"
    }
.end annotation


# instance fields
.field private final model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

.field private final style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;)V
    .locals 2

    .line 456
    invoke-direct {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;-><init>()V

    .line 457
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The model may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The style may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 461
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 462
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    const/4 p1, 0x0

    .line 463
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->notifyOnCloseTab(Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;)Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 0

    .line 58
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object p0
.end method

.method private adaptAllSelectionStates()V
    .locals 3

    .line 226
    new-instance v0, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 227
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object v0

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v2, :cond_0

    .line 232
    check-cast v1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 233
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptSelectionState(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 234
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adaptBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 4

    .line 153
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabBackgroundColor(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a1

    aput v2, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 157
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 158
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    invoke-virtual {p0, v0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onAdaptBackgroundColor(ILde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method private adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabCloseButtonIcon(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 142
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private adaptCloseButtonVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 4

    .line 122
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 124
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 125
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    sget v2, Lde/mrapp/android/tabswitcher/R$id;->tag_visibility:I

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 126
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    .line 127
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->isCloseable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->createCloseButtonClickListener(Landroid/widget/ImageButton;Lde/mrapp/android/tabswitcher/Tab;)Landroid/view/View$OnClickListener;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 126
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private adaptIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 110
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabIcon(Lde/mrapp/android/tabswitcher/Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private adaptProgressBarColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 200
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabProgressBarColor(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    .line 203
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    invoke-virtual {p1, v0}, Lde/mrapp/android/view/CircularProgressBar;->setColor(I)V

    return-void
.end method

.method private adaptProgressBarVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 5

    .line 186
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 188
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->isProgressBarShown()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->isProgressBarShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private adaptSelectionState(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 216
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 217
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 218
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private adaptTitle(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 97
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/Tab;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private adaptTitleTextColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabTitleTextColor(Lde/mrapp/android/tabswitcher/Tab;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    .line 175
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private createCloseButtonClickListener(Landroid/widget/ImageButton;Lde/mrapp/android/tabswitcher/Tab;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 255
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter$1;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;Lde/mrapp/android/tabswitcher/Tab;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private notifyOnCloseTab(Lde/mrapp/android/tabswitcher/Tab;)Z
    .locals 4

    .line 287
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabCloseListeners()Lde/mrapp/util/datastructure/ListenerList;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/tabswitcher/TabCloseListener;

    .line 288
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-interface {v2, v3, p1}, Lde/mrapp/android/tabswitcher/TabCloseListener;->onCloseTab(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method protected final getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
    .locals 1

    .line 313
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    return-object v0
.end method

.method protected final getStyle()Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;
    .locals 1

    .line 324
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->style:Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    return-object v0
.end method

.method protected final getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 2

    .line 338
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 1

    .line 302
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-object v0
.end method

.method protected final getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    const-class v2, Ljava/lang/IllegalStateException;

    const-string v3, "No view recycler has been set"

    invoke-virtual {v0, v1, v3, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 362
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-object v0
.end method

.method public getViewType(Lde/mrapp/android/tabswitcher/model/AbstractItem;)I
    .locals 1

    .line 741
    instance-of p1, p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 744
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown item type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewType(Lde/mrapp/android/tabswitcher/model/AbstractItem;)I

    move-result p1

    return p1
.end method

.method protected abstract onAdaptBackgroundColor(ILde/mrapp/android/tabswitcher/model/TabItem;)V
.end method

.method public onAddTabButtonColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final onAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 523
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public final onAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    return-void
.end method

.method public final onCloseButtonIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 693
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_0
    return-void
.end method

.method public final onCloseableChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    .line 681
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 684
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptCloseButtonVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_0
    return-void
.end method

.method protected abstract onCreateTabViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;
.end method

.method public final onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 0

    return-void
.end method

.method public final onEmptyViewChanged(Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method public final onIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    .line 672
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_0
    return-void
.end method

.method protected abstract onInflateTabView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)Landroid/view/View;
.end method

.method public varargs onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/model/AbstractItem;I[Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    if-nez p4, :cond_0

    .line 756
    move-object p4, p3

    check-cast p4, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 757
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onCreateTabViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p5

    .line 758
    invoke-virtual {p0, p1, p2, p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onInflateTabView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)Landroid/view/View;

    move-result-object p1

    .line 759
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tab_title_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p5, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->titleContainer:Landroid/view/ViewGroup;

    .line 760
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tab_title_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p5, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 761
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tab_icon_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p5, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 762
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tab_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lde/mrapp/android/view/CircularProgressBar;

    iput-object p2, p5, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    .line 763
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->close_tab_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p5, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;->closeButton:Landroid/widget/ImageButton;

    .line 764
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p1, p2, p5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 765
    invoke-virtual {p4, p5}, Lde/mrapp/android/tabswitcher/model/TabItem;->setViewHolder(Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)V

    .line 766
    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setView(Landroid/view/View;)V

    .line 767
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1

    .line 770
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown view type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 58
    check-cast p3, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    check-cast p5, [Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/model/AbstractItem;I[Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 1

    .line 810
    instance-of v0, p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v0, :cond_0

    .line 811
    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 812
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p2

    .line 813
    invoke-virtual {p2, p0}, Lde/mrapp/android/tabswitcher/Tab;->removeCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V

    .line 814
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 816
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown item type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V
    .locals 0

    .line 503
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptAllSelectionStates()V

    return-void
.end method

.method protected varargs abstract onShowTabView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;[Ljava/lang/Integer;)V
.end method

.method public varargs onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;Z[Ljava/lang/Integer;)V
    .locals 0

    .line 780
    instance-of p1, p3, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz p1, :cond_1

    .line 781
    check-cast p3, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 782
    sget p1, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    .line 783
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    .line 785
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->isInflated()Z

    move-result p4

    if-nez p4, :cond_0

    .line 786
    invoke-virtual {p3, p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setView(Landroid/view/View;)V

    .line 787
    invoke-virtual {p3, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->setViewHolder(Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)V

    .line 788
    sget p1, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 791
    :cond_0
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    .line 792
    invoke-virtual {p1, p0}, Lde/mrapp/android/tabswitcher/Tab;->addCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V

    .line 793
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptTitle(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 794
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 795
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptProgressBarVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 796
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptCloseButtonVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 797
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 798
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 799
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 800
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptSelectionState(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 801
    invoke-virtual {p0, p2, p3, p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onShowTabView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;[Ljava/lang/Integer;)V

    return-void

    .line 803
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown item type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p3, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    check-cast p5, [Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;Z[Ljava/lang/Integer;)V

    return-void
.end method

.method public final onSwitcherHidden()V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown()V
    .locals 0

    return-void
.end method

.method public final onTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 513
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 569
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 570
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 573
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 575
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 600
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 601
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 604
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 606
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptCloseButtonIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 555
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 556
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 559
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 561
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptIcon(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabProgressBarColorChanged(I)V
    .locals 2

    .line 613
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 614
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 619
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptProgressBarColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 533
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptAllSelectionStates()V

    :cond_0
    return-void
.end method

.method public final onTabTitleColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 587
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->model:Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 588
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 593
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onTitleChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    .line 663
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 666
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptTitle(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_0
    return-void
.end method

.method public final onTitleTextColorChanged(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    .line 713
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabItem(Lde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->adaptTitleTextColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :cond_0
    return-void
.end method

.method public final onToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    return-void
.end method

.method public final onToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final onToolbarTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onToolbarVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public final setViewRecycler(Lde/mrapp/android/util/view/AttachedViewRecycler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 475
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view recycler may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->viewRecycler:Lde/mrapp/android/util/view/AttachedViewRecycler;

    return-void
.end method
