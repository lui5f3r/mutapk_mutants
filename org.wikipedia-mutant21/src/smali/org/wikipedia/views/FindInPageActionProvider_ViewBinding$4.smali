.class Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;
.super Ljava/lang/Object;
.source "FindInPageActionProvider_ViewBinding.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/FindInPageActionProvider;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;Lorg/wikipedia/views/FindInPageActionProvider;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;->this$0:Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;->val$target:Lorg/wikipedia/views/FindInPageActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider_ViewBinding$4;->val$target:Lorg/wikipedia/views/FindInPageActionProvider;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/FindInPageActionProvider;->onFindInPagePrevLongClicked(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
