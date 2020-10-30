.class public final synthetic Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;->f$0:Landroid/view/View;

    iput-object p2, p0, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;->f$0:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/-$$Lambda$LongPressHandler$h2__LNDJgOKeyat5XkdsMYNpzy4;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/LongPressHandler;->lambda$showPopupMenu$0(Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/PopupMenu;)V

    return-void
.end method
