.class final enum Lorg/wikipedia/views/WikiErrorView$ErrorType$2;
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
.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 114
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/views/WikiErrorView$ErrorType;-><init>(Ljava/lang/String;IIIIILorg/wikipedia/views/WikiErrorView$1;)V

    return-void
.end method


# virtual methods
.method buttonClickListener(Lorg/wikipedia/views/WikiErrorView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 118
    invoke-virtual {p1}, Lorg/wikipedia/views/WikiErrorView;->getRetryListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method
