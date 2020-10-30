.class public final synthetic Lorg/wikipedia/views/-$$Lambda$ViewUtil$e6V89v8IVK3CzBSKA4nw7816zSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ActionMode;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/-$$Lambda$ViewUtil$e6V89v8IVK3CzBSKA4nw7816zSo;->f$0:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/views/-$$Lambda$ViewUtil$e6V89v8IVK3CzBSKA4nw7816zSo;->f$0:Landroid/view/ActionMode;

    invoke-static {v0, p1}, Lorg/wikipedia/views/ViewUtil;->lambda$setCloseButtonInActionMode$0(Landroid/view/ActionMode;Landroid/view/View;)V

    return-void
.end method
