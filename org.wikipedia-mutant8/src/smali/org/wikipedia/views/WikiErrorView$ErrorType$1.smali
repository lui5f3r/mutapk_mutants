.class final enum Lorg/wikipedia/views/WikiErrorView$ErrorType$1;
.super Lorg/wikipedia/views/WikiErrorView$ErrorType;
.source "WikiErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/WikiErrorView$ErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 105
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(Ljava/lang/String;IIIILorg/wikipedia/views/WikiErrorView$1;)V

    return-void
.end method


# virtual methods
.method buttonClickListener(Lorg/wikipedia/views/WikiErrorView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 109
    invoke-virtual {p1}, Lorg/wikipedia/views/WikiErrorView;->getBackListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method
