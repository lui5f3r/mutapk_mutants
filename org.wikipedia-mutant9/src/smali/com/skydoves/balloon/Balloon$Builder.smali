.class public final Lcom/skydoves/balloon/Balloon$Builder;
.super Ljava/lang/Object;
.source "Balloon.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/balloon/Balloon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalloon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon$Builder\n*L\n1#1,1355:1\n*E\n"
.end annotation


# instance fields
.field public alpha:F

.field public arrowAlignAnchorPadding:I

.field public arrowAlignAnchorPaddingRatio:F

.field public arrowBottomPadding:I

.field public arrowColor:I

.field public arrowConstraints:Lcom/skydoves/balloon/ArrowConstraints;

.field public arrowDrawable:Landroid/graphics/drawable/Drawable;

.field public arrowLeftPadding:I

.field public arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

.field public arrowPosition:F

.field public arrowRightPadding:I

.field public arrowSize:I

.field public arrowTopPadding:I

.field public arrowVisible:Z

.field public autoDismissDuration:J

.field public backgroundColor:I

.field public backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

.field public balloonAnimationStyle:I

.field public circularDuration:J

.field private final context:Landroid/content/Context;

.field public cornerRadius:F

.field public dismissWhenClicked:Z

.field public dismissWhenLifecycleOnPause:Z

.field public dismissWhenShowAgain:Z

.field public dismissWhenTouchOutside:Z

.field public elevation:F

.field public height:I

.field public iconColor:I

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public iconForm:Lcom/skydoves/balloon/IconForm;

.field public iconGravity:Lcom/skydoves/balloon/IconGravity;

.field public iconSize:I

.field public iconSpace:I

.field public isFocusable:Z

.field public isRtlSupport:Z

.field public isStatusBarVisible:Z

.field public layout:Landroid/view/View;

.field public layoutRes:I

.field public lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public onBalloonClickListener:Lcom/skydoves/balloon/OnBalloonClickListener;

.field public onBalloonDismissListener:Lcom/skydoves/balloon/OnBalloonDismissListener;

.field public onBalloonInitializedListener:Lcom/skydoves/balloon/OnBalloonInitializedListener;

.field public onBalloonOutsideTouchListener:Lcom/skydoves/balloon/OnBalloonOutsideTouchListener;

.field public padding:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public preferenceName:Ljava/lang/String;

.field public showTimes:I

.field public space:I

.field public text:Ljava/lang/CharSequence;

.field public textColor:I

.field public textForm:Lcom/skydoves/balloon/TextForm;

.field public textGravity:I

.field public textIsHtml:Z

.field public textSize:F

.field public textTypeface:I

.field public textTypefaceObject:Landroid/graphics/Typeface;

.field public width:I

.field public widthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    const/high16 v0, -0x80000000

    .line 765
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 771
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    .line 774
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->padding:I

    const/4 v1, 0x1

    .line 792
    iput-boolean v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowVisible:Z

    .line 795
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowColor:I

    const/16 v2, 0xc

    .line 798
    invoke-static {p1, v2}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 801
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowPosition:F

    .line 804
    sget-object p1, Lcom/skydoves/balloon/ArrowConstraints;->ALIGN_BALLOON:Lcom/skydoves/balloon/ArrowConstraints;

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowConstraints:Lcom/skydoves/balloon/ArrowConstraints;

    .line 807
    sget-object p1, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    const/high16 p1, 0x40200000    # 2.5f

    .line 828
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPaddingRatio:F

    const/high16 p1, -0x1000000

    .line 831
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    .line 837
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {p1, v2}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->cornerRadius:F

    const-string p1, ""

    .line 840
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->text:Ljava/lang/CharSequence;

    const/4 p1, -0x1

    .line 843
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->textColor:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 849
    iput v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->textSize:F

    const/16 v2, 0x11

    .line 858
    iput v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->textGravity:I

    .line 867
    sget-object v2, Lcom/skydoves/balloon/IconGravity;->LEFT:Lcom/skydoves/balloon/IconGravity;

    iput-object v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    .line 870
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->iconSize:I

    .line 873
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->iconSpace:I

    .line 876
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->iconColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 882
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->alpha:F

    .line 885
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    .line 892
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->layoutRes:I

    .line 907
    iput-boolean v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    const-wide/16 v2, -0x1

    .line 919
    iput-wide v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->autoDismissDuration:J

    .line 925
    iput v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimationStyle:I

    .line 928
    sget-object p1, Lcom/skydoves/balloon/BalloonAnimation;->FADE:Lcom/skydoves/balloon/BalloonAnimation;

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    const-wide/16 v2, 0x1f4

    .line 931
    iput-wide v2, p0, Lcom/skydoves/balloon/Balloon$Builder;->circularDuration:J

    .line 937
    iput v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->showTimes:I

    .line 943
    iput-boolean v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    .line 946
    iput-boolean v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->isStatusBarVisible:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/skydoves/balloon/Balloon;
    .locals 2

    .line 1341
    new-instance v0, Lcom/skydoves/balloon/Balloon;

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/skydoves/balloon/Balloon;-><init>(Landroid/content/Context;Lcom/skydoves/balloon/Balloon$Builder;)V

    return-object v0
.end method

.method public final setArrowConstraints(Lcom/skydoves/balloon/ArrowConstraints;)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowConstraints:Lcom/skydoves/balloon/ArrowConstraints;

    return-object p0
.end method

.method public final setArrowDrawableResource(I)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setArrowOrientation(Lcom/skydoves/balloon/ArrowOrientation;)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    return-object p0
.end method

.method public final setArrowSize(I)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    return-object p0
.end method

.method public final setBackgroundColorResource(I)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->contextColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    return-object p0
.end method

.method public final setDismissWhenTouchOutside(Z)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 0

    .line 1303
    iput-boolean p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    if-nez p1, :cond_0

    .line 1305
    invoke-virtual {p0, p1}, Lcom/skydoves/balloon/Balloon$Builder;->setFocusable(Z)Lcom/skydoves/balloon/Balloon$Builder;

    :cond_0
    return-object p0
.end method

.method public final setFocusable(Z)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 0

    .line 1339
    iput-boolean p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    return-object p0
.end method

.method public final setPadding(I)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/skydoves/balloon/extensions/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->padding:I

    return-object p0
.end method

.method public final setText(Ljava/lang/CharSequence;)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTextColor(I)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 0

    .line 1122
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->textColor:I

    return-object p0
.end method

.method public final setTextSize(F)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 0

    .line 1133
    iput p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->textSize:F

    return-object p0
.end method

.method public final setTextTypeface(Landroid/graphics/Typeface;)Lcom/skydoves/balloon/Balloon$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$Builder;->textTypefaceObject:Landroid/graphics/Typeface;

    return-object p0
.end method
