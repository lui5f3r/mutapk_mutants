.class public Lorg/wikipedia/views/ImageZoomHelper;
.super Ljava/lang/Object;
.source "ImageZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;
    }
.end annotation


# static fields
.field private static FLAG_UNZOOMABLE:I = 0x2

.field private static FLAG_ZOOMABLE:I = 0x1


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private darkView:Landroid/view/View;

.field private decorView:Landroid/view/ViewGroup;

.field private isAnimatingDismiss:Z

.field private originalDistance:D

.field private originalXY:[I

.field private parentOfZoomableView:Landroid/view/ViewGroup;

.field private pivotX:I

.field private pivotY:I

.field private twoPointCenter:[I

.field private viewIndex:I

.field private zoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private zoomableView:Landroid/view/View;

.field private zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

.field private zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->pivotX:I

    iput v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->pivotY:I

    .line 39
    iput-boolean v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/ImageZoomHelper;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/views/ImageZoomHelper;FFFIIFFII)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p9}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableView(FFFIIFFII)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/views/ImageZoomHelper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/wikipedia/views/ImageZoomHelper;->dismissDialogAndViews()V

    return-void
.end method

.method public static clearViewZoomable(Landroid/view/View;)V
    .locals 2

    .line 337
    invoke-static {p0}, Lorg/wikipedia/views/ImageZoomHelper;->getIntTag(Landroid/view/View;)I

    move-result v0

    sget v1, Lorg/wikipedia/views/ImageZoomHelper;->FLAG_ZOOMABLE:I

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private dismissDialogAndViews()V
    .locals 5

    .line 235
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/wikipedia/views/ImageZoomHelper;->sendZoomEventToListeners(Landroid/view/View;Z)V

    .line 236
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    iget-object v2, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    iget v3, p0, Lorg/wikipedia/views/ImageZoomHelper;->viewIndex:I

    iget-object v4, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->decorView:Landroid/view/ViewGroup;

    .line 243
    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 244
    invoke-direct {p0}, Lorg/wikipedia/views/ImageZoomHelper;->resetOriginalViewAfterZoom()V

    .line 245
    iput-boolean v1, p0, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    return-void
.end method

.method private findZoomableView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/View;
    .locals 10

    .line 295
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 296
    check-cast p2, Landroid/view/ViewGroup;

    .line 297
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 299
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 302
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v4, 0x1

    .line 303
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 306
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 308
    invoke-static {v6}, Lorg/wikipedia/views/ImageZoomHelper;->getIntTag(Landroid/view/View;)I

    move-result v7

    sget v8, Lorg/wikipedia/views/ImageZoomHelper;->FLAG_UNZOOMABLE:I

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    .line 309
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 311
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 312
    aget v9, v8, v2

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 313
    aget v8, v8, v4

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 314
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v9, v8

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 315
    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget v8, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v8, v8

    iget v9, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v8, v8

    iget v9, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v9, v9

    .line 318
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    invoke-static {v6}, Lorg/wikipedia/views/ImageZoomHelper;->getIntTag(Landroid/view/View;)I

    move-result p2

    sget v0, Lorg/wikipedia/views/ImageZoomHelper;->FLAG_ZOOMABLE:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v6}, Lorg/wikipedia/views/ImageZoomHelper;->findZoomableView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDistance(DDDD)D
    .locals 0

    sub-double/2addr p3, p1

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    .line 283
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    sub-double/2addr p7, p5

    invoke-static {p7, p8, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private static getIntTag(Landroid/view/View;)I
    .locals 1

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private resetOriginalViewAfterZoom()V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private sendZoomEventToListeners(Landroid/view/View;Z)V
    .locals 2

    .line 257
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;

    if-eqz p2, :cond_0

    .line 259
    invoke-interface {v1, p1}, Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;->onImageZoomStarted(Landroid/view/View;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v1, p1}, Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;->onImageZoomEnded(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setViewZoomable(Landroid/view/View;)V
    .locals 2

    .line 333
    invoke-static {p0}, Lorg/wikipedia/views/ImageZoomHelper;->getIntTag(Landroid/view/View;)I

    move-result v0

    sget v1, Lorg/wikipedia/views/ImageZoomHelper;->FLAG_ZOOMABLE:I

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private updateZoomableView(FFFIIFFII)V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    sub-float/2addr p6, p3

    mul-float p6, p6, p1

    add-float/2addr p6, p3

    invoke-virtual {v0, p6}, Landroid/view/View;->setScaleX(F)V

    .line 216
    iget-object p3, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    sub-float/2addr p7, p2

    mul-float p7, p7, p1

    add-float/2addr p7, p2

    invoke-virtual {p3, p7}, Landroid/view/View;->setScaleY(F)V

    sub-int/2addr p8, p4

    int-to-float p2, p8

    mul-float p2, p2, p1

    int-to-float p3, p4

    add-float/2addr p2, p3

    sub-int/2addr p9, p5

    int-to-float p3, p9

    mul-float p3, p3, p1

    int-to-float p1, p5

    add-float/2addr p3, p1

    .line 218
    invoke-direct {p0, p2, p3}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableViewMargins(FF)V

    return-void
.end method

.method private updateZoomableViewMargins(FF)V
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    float-to-int p1, p1

    .line 225
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    float-to-int p1, p2

    .line 226
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnZoomListener(Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$onDispatchTouchEvent$0$ImageZoomHelper(FFIIIIFLandroid/animation/ValueAnimator;)V
    .locals 12

    move-object v10, p0

    .line 167
    invoke-virtual/range {p8 .. p8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v11

    .line 168
    iget-object v0, v10, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 169
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableView(FFFIIFFII)V

    .line 174
    :cond_0
    iget-object v0, v10, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sub-float v1, v1, p7

    mul-float v1, v1, v11

    add-float v1, v1, p7

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 49
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v11, 0x0

    if-nez v0, :cond_0

    return v11

    .line 54
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v1, v12, :cond_2

    .line 55
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-nez v1, :cond_1

    const v1, 0x1020002

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v9, v10, v1}, Lorg/wikipedia/views/ImageZoomHelper;->findZoomableView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    iput-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    new-array v2, v12, [I

    .line 61
    iput-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 65
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v3, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    const/high16 v4, -0x1000000

    .line 69
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 73
    iget-object v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->decorView:Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    .line 82
    iget-object v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->viewIndex:I

    .line 83
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    aget v3, v1, v11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 89
    aget v1, v1, v13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v15, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 97
    invoke-virtual {v10, v11, v15}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 99
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 100
    invoke-virtual {v10, v13, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 103
    iget v0, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v1, v0

    iget v0, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v3, v0

    iget v0, v15, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v5, v0

    iget v0, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v13, v0

    move-object/from16 v0, p0

    move-object v11, v7

    move-wide v7, v13

    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/views/ImageZoomHelper;->getDistance(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalDistance:D

    new-array v0, v12, [I

    .line 107
    iget v1, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v4, v15, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v1, v4

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->twoPointCenter:[I

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->pivotX:I

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->pivotY:I

    .line 116
    iget-object v0, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-direct {v9, v0, v2}, Lorg/wikipedia/views/ImageZoomHelper;->sendZoomEventToListeners(Landroid/view/View;Z)V

    return v2

    :cond_1
    const/4 v2, 0x1

    .line 120
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v10, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 123
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 124
    invoke-virtual {v10, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    new-array v10, v12, [I

    .line 126
    iget v2, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v10, v1

    iget v1, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v3, v1, v0

    div-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v5, 0x1

    aput v3, v10, v5

    float-to-double v3, v4

    float-to-double v5, v2

    float-to-double v7, v0

    float-to-double v11, v1

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v11

    .line 131
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/views/ImageZoomHelper;->getDistance(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    .line 133
    iget-wide v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalDistance:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v2

    .line 135
    iget-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    iget v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->pivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 136
    iget-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    iget v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->pivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 138
    iget-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v0

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 139
    iget-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    .line 141
    aget v3, v10, v2

    iget-object v4, v9, Lorg/wikipedia/views/ImageZoomHelper;->twoPointCenter:[I

    aget v5, v4, v2

    sub-int/2addr v3, v5

    iget-object v5, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    aget v2, v5, v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x1

    aget v6, v10, v3

    aget v4, v4, v3

    sub-int/2addr v6, v4

    aget v4, v5, v3

    add-int/2addr v6, v4

    int-to-float v4, v6

    invoke-direct {v9, v2, v4}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableViewMargins(FF)V

    .line 145
    iget-object v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    return v3

    :cond_2
    const/4 v3, 0x1

    .line 149
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-boolean v2, v9, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    if-nez v2, :cond_3

    .line 150
    iput-boolean v3, v9, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v10

    .line 153
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v11

    .line 154
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 155
    iget v14, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 160
    iget-object v1, v9, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    const/4 v2, 0x0

    aget v15, v1, v2

    .line 161
    aget v16, v1, v3

    new-array v1, v12, [F

    .line 164
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    new-instance v7, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v10

    move v3, v11

    move v4, v13

    move v5, v14

    move v6, v15

    move-object v9, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/views/-$$Lambda$ImageZoomHelper$0ddn1_1ZYzmGGIMaYbIhGFb4aKs;-><init>(Lorg/wikipedia/views/ImageZoomHelper;FFIIIIF)V

    invoke-virtual {v12, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    new-instance v9, Lorg/wikipedia/views/ImageZoomHelper$1;

    move-object v0, v9

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/views/ImageZoomHelper$1;-><init>(Lorg/wikipedia/views/ImageZoomHelper;FFIIIILandroid/animation/ValueAnimator;)V

    invoke-virtual {v12, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeOnZoomListener(Lorg/wikipedia/views/ImageZoomHelper$OnZoomListener;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
