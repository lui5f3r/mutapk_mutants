.class Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PageActionOverflowView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;-><init>(Lorg/wikipedia/views/PageActionOverflowView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/PageActionOverflowView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;Lorg/wikipedia/views/PageActionOverflowView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;->this$0:Lorg/wikipedia/views/PageActionOverflowView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;->val$target:Lorg/wikipedia/views/PageActionOverflowView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView_ViewBinding$1;->val$target:Lorg/wikipedia/views/PageActionOverflowView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageActionOverflowView;->onItemClick(Landroid/view/View;)V

    return-void
.end method
