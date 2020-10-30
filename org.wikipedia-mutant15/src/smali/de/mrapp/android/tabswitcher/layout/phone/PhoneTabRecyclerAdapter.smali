.class public Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;
.super Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;
.source "PhoneTabRecyclerAdapter.java"

# interfaces
.implements Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;",
        "Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener<",
        "Landroid/graphics/Bitmap;",
        "Lde/mrapp/android/tabswitcher/Tab;",
        "Landroid/widget/ImageView;",
        "Lde/mrapp/android/tabswitcher/model/TabItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;"
        }
    .end annotation
.end field

.field private final tabBorderWidth:I

.field private final tabInset:I

.field private final tabTitleContainerHeight:I

.field private final tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;Lde/mrapp/android/util/view/ViewRecycler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/TabSwitcher;",
            "Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;",
            "Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;",
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;)V

    .line 252
    sget-object p3, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The tab view recycler may not be null"

    invoke-virtual {p3, p4, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iput-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    .line 254
    new-instance p3, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;

    invoke-direct {p3, p1, p4, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;-><init>(Landroid/view/ViewGroup;Lde/mrapp/android/util/view/ViewRecycler;Lde/mrapp/android/tabswitcher/model/Model;)V

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    .line 255
    invoke-virtual {p3, p0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->addListener(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Listener;)V

    .line 256
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 257
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabInset:I

    .line 258
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabBorderWidth:I

    .line 259
    sget p2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_title_container_height:I

    .line 260
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabTitleContainerHeight:I

    .line 261
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptLogLevel()V

    return-void
.end method

.method private adaptBackgroundVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getView()Landroid/view/View;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private adaptContentBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getStyle()Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherStyle;->getTabContentBackgroundColor(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 183
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private adaptLogLevel()V
    .locals 2

    .line 190
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method private adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V
    .locals 6

    .line 201
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 203
    iget-object v1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 206
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    :cond_0
    iget-object p1, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private addContentView(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 8

    .line 94
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 95
    iget-object v3, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    .line 96
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    const/4 p1, 0x0

    if-nez v3, :cond_0

    .line 99
    iget-object v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    .line 100
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    new-array v3, p1, [Ljava/lang/Void;

    invoke-virtual {v2, v4, v1, v3}, Lde/mrapp/android/util/view/ViewRecycler;->inflate(Ljava/lang/Object;Landroid/view/ViewGroup;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 101
    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 102
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->getPadding()Landroid/graphics/Rect;

    move-result-object v4

    .line 105
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iput-object v2, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, p1, [Ljava/lang/Void;

    invoke-virtual/range {v1 .. v6}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 112
    :goto_0
    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object p1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getPadding()Landroid/graphics/Rect;
    .locals 5

    .line 222
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isPaddingAppliedToTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingTop()I

    move-result v2

    .line 224
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v4

    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private removeContentView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    .line 151
    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 152
    iget-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-object v0, p1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    .line 156
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p1, p2}, Lde/mrapp/android/util/view/ViewRecycler;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method private renderPreview(Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 6

    .line 125
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 127
    iget-object v2, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v2, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    iget-object v5, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    invoke-virtual {v2, v5, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    iget-object v5, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    new-array v3, v3, [Lde/mrapp/android/tabswitcher/model/TabItem;

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v5, v4, v3}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->load(Ljava/lang/Object;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, v1, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->removeContentView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_1

    .line 135
    :cond_1
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    iget-object v1, v1, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    new-array v3, v3, [Lde/mrapp/android/tabswitcher/model/TabItem;

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->load(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final clearCachedPreviews()V
    .locals 1

    .line 268
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {v0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->clearCache()V

    return-void
.end method

.method protected final onAdaptBackgroundColor(ILde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 1

    .line 274
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p2

    check-cast p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 275
    iget-object p2, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 276
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected final onCreateTabViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;
    .locals 1

    .line 327
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;-><init>()V

    return-object v0
.end method

.method public final varargs onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            "[",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/widget/ImageView;

    check-cast p5, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->onFinished(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method protected final onInflateTabView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)Landroid/view/View;
    .locals 2

    .line 284
    sget v0, Lde/mrapp/android/tabswitcher/R$layout;->phone_tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lde/mrapp/android/tabswitcher/R$drawable;->phone_tab_background:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 287
    invoke-static {p1, p2}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabInset:I

    iget v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabBorderWidth:I

    add-int/2addr v0, p2

    .line 289
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 290
    check-cast p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    sget p2, Lde/mrapp/android/tabswitcher/R$id;->content_container:I

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    .line 292
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->preview_image_view:I

    .line 293
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    .line 294
    invoke-direct {p0, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    .line 295
    sget p2, Lde/mrapp/android/tabswitcher/R$id;->border_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lde/mrapp/android/tabswitcher/R$drawable;->phone_tab_border:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 298
    iget-object p3, p3, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->borderView:Landroid/view/View;

    invoke-static {p3, p2}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public final varargs onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
            "Landroid/graphics/Bitmap;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Landroid/widget/ImageView;",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ">;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "[",
            "Lde/mrapp/android/tabswitcher/model/TabItem;",
            ")Z"
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabPreviewListeners()Lde/mrapp/util/datastructure/ListenerList;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/TabPreviewListener;

    .line 428
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lde/mrapp/android/tabswitcher/TabPreviewListener;->onLoadTabPreview(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/Tab;)Z

    move-result v0

    and-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return p3
.end method

.method public bridge synthetic onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p2, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p3, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->onLoadData(Lde/mrapp/android/util/multithreading/AbstractDataBinder;Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Z

    move-result p1

    return p1
.end method

.method public final onLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptLogLevel()V

    return-void
.end method

.method public final onPaddingChanged(IIII)V
    .locals 0

    .line 373
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 374
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 378
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result p3

    if-eqz p3, :cond_0

    instance-of p3, p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz p3, :cond_0

    .line 379
    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p2

    .line 380
    check-cast p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptPadding(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 3

    .line 338
    instance-of v0, p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v0, :cond_2

    .line 339
    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 340
    sget v0, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 341
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v1

    .line 342
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->removeContentView(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;Lde/mrapp/android/tabswitcher/Tab;)V

    .line 344
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->dataBinder:Lde/mrapp/android/util/multithreading/AbstractDataBinder;

    invoke-virtual {v2, v1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->isCached(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 345
    iget-object v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 349
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-void

    .line 361
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown item type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onRemoveView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    return-void
.end method

.method protected final varargs onShowTabView(Landroid/view/View;Lde/mrapp/android/tabswitcher/model/TabItem;[Ljava/lang/Integer;)V
    .locals 5

    .line 305
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 307
    iget v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabInset:I

    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabBorderWidth:I

    add-int/2addr v2, v3

    neg-int v2, v2

    .line 308
    array-length v3, p3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_0

    aget-object p3, p3, v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v2

    .line 309
    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 310
    iget v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabInset:I

    iget v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->tabTitleContainerHeight:I

    add-int/2addr v1, v3

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 311
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 312
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptContentBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 315
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptBackgroundVisibility(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    .line 317
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isSwitcherShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 318
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->addContentView(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_1

    .line 320
    :cond_1
    invoke-direct {p0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->renderPreview(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    :goto_1
    return-void
.end method

.method public final onTabContentBackgroundColorChanged(I)V
    .locals 2

    .line 401
    new-instance p1, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;

    .line 402
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabRecyclerAdapter;->getViewRecyclerOrThrowException()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;-><init>(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;)V

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/ItemIterator$Builder;->create()Lde/mrapp/android/tabswitcher/iterator/ItemIterator;

    move-result-object p1

    .line 405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->next()Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v1, :cond_0

    .line 407
    check-cast v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabRecyclerAdapter;->adaptContentBackgroundColor(Lde/mrapp/android/tabswitcher/model/TabItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method
