.class public Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;
.super Lde/mrapp/android/util/multithreading/AbstractDataBinder;
.source "PreviewDataBinder.java"


# annotations
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


# instance fields
.field private final contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final model:Lde/mrapp/android/tabswitcher/model/Model;

.field private final parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lde/mrapp/android/util/view/ViewRecycler;Lde/mrapp/android/tabswitcher/model/Model;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lde/mrapp/android/util/view/ViewRecycler<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/lang/Void;",
            ">;",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/collection/LruCache;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroidx/collection/LruCache;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;-><init>(Landroid/content/Context;Landroidx/collection/LruCache;)V

    .line 79
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The parent may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The content view recycler may not be null"

    .line 81
    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->parent:Landroid/view/ViewGroup;

    .line 83
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    .line 84
    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground(Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/graphics/Bitmap;
    .locals 4

    .line 109
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 110
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const/4 p1, 0x0

    .line 113
    aget-object p2, p2, p1

    .line 114
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object p2

    check-cast p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 115
    iget-object v0, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p2, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    .line 117
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    .line 118
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 119
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 120
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 119
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, p1, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 122
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 123
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p2, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->doInBackground(Lde/mrapp/android/tabswitcher/Tab;[Lde/mrapp/android/tabswitcher/model/TabItem;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs onPostExecute(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J[Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 4

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 134
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model;->getTabPreviewFadeThreshold()J

    move-result-wide v1

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_3

    .line 139
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->model:Lde/mrapp/android/tabswitcher/model/Model;

    invoke-interface {p4}, Lde/mrapp/android/tabswitcher/model/Model;->getTabPreviewFadeDuration()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance p4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 140
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    const/4 p3, 0x4

    .line 143
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/16 p2, 0x8

    .line 146
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    aget-object p1, p5, v0

    .line 148
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-virtual {p2, p1}, Lde/mrapp/android/util/view/ViewRecycler;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    check-cast p5, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->onPostExecute(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J[Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method

.method protected final varargs onPreExecute(Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 8

    const/4 p1, 0x0

    .line 90
    aget-object p2, p2, p1

    .line 91
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;

    .line 92
    iget-object v7, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    .line 93
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v4

    if-nez v7, :cond_0

    .line 96
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    iget-object v1, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->contentContainer:Landroid/view/ViewGroup;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, v4, v1, p1}, Lde/mrapp/android/util/view/ViewRecycler;->inflate(Ljava/lang/Object;Landroid/view/ViewGroup;[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    .line 97
    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Landroid/view/View;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->contentViewRecycler:Lde/mrapp/android/util/view/ViewRecycler;

    invoke-virtual {p2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, p1, [Ljava/lang/Void;

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 102
    :goto_0
    iput-object v7, v0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabViewHolder;->content:Landroid/view/View;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, [Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PreviewDataBinder;->onPreExecute(Landroid/widget/ImageView;[Lde/mrapp/android/tabswitcher/model/TabItem;)V

    return-void
.end method
