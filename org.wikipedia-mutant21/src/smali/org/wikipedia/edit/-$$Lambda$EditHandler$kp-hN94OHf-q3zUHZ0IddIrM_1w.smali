.class public final synthetic Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/EditHandler;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;->f$0:Lorg/wikipedia/edit/EditHandler;

    iput-object p2, p0, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;->f$0:Lorg/wikipedia/edit/EditHandler;

    iget-object v1, p0, Lorg/wikipedia/edit/-$$Lambda$EditHandler$kp-hN94OHf-q3zUHZ0IddIrM_1w;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/edit/EditHandler;->lambda$onMessage$0$EditHandler(Landroid/view/View;Landroidx/appcompat/widget/PopupMenu;)V

    return-void
.end method
