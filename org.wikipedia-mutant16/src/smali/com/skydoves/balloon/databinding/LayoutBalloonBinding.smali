.class public final Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;
.super Ljava/lang/Object;
.source "LayoutBalloonBinding.java"


# instance fields
.field public final balloonArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field public final balloonCard:Landroidx/cardview/widget/CardView;

.field public final balloonContent:Landroid/widget/RelativeLayout;

.field public final balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Lcom/skydoves/balloon/vectortext/VectorTextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p3, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    iput-object p4, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonCard:Landroidx/cardview/widget/CardView;

    .line 45
    iput-object p5, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonContent:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p6, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;
    .locals 8

    .line 76
    sget v0, Lcom/skydoves/balloon/R$id;->balloon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 81
    sget v0, Lcom/skydoves/balloon/R$id;->balloon_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_3

    .line 86
    sget v0, Lcom/skydoves/balloon/R$id;->balloon_card:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_2

    .line 91
    sget v0, Lcom/skydoves/balloon/R$id;->balloon_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_1

    .line 96
    sget v0, Lcom/skydoves/balloon/R$id;->balloon_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/skydoves/balloon/vectortext/VectorTextView;

    if-eqz v7, :cond_0

    .line 101
    new-instance v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Lcom/skydoves/balloon/vectortext/VectorTextView;)V

    return-object v0

    :cond_0
    const-string p0, "balloonText"

    goto :goto_0

    :cond_1
    const-string p0, "balloonContent"

    goto :goto_0

    :cond_2
    const-string p0, "balloonCard"

    goto :goto_0

    :cond_3
    const-string p0, "balloonArrow"

    goto :goto_0

    :cond_4
    const-string p0, "balloon"

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;
    .locals 2

    .line 63
    sget v0, Lcom/skydoves/balloon/R$layout;->layout_balloon:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->bind(Landroid/view/View;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
