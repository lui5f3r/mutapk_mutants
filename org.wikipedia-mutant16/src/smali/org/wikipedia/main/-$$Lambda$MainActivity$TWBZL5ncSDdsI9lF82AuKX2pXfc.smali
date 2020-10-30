.class public final synthetic Lorg/wikipedia/main/-$$Lambda$MainActivity$TWBZL5ncSDdsI9lF82AuKX2pXfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/main/-$$Lambda$MainActivity$TWBZL5ncSDdsI9lF82AuKX2pXfc;->f$0:Lorg/wikipedia/main/MainActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/main/-$$Lambda$MainActivity$TWBZL5ncSDdsI9lF82AuKX2pXfc;->f$0:Lorg/wikipedia/main/MainActivity;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/main/MainActivity;->lambda$onCreate$0$MainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
