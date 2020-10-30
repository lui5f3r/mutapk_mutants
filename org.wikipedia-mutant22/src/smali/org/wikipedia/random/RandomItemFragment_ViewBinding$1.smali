.class Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RandomItemFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/random/RandomItemFragment_ViewBinding;-><init>(Lorg/wikipedia/random/RandomItemFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/random/RandomItemFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/random/RandomItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/random/RandomItemFragment_ViewBinding;Lorg/wikipedia/random/RandomItemFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;->this$0:Lorg/wikipedia/random/RandomItemFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;->val$target:Lorg/wikipedia/random/RandomItemFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment_ViewBinding$1;->val$target:Lorg/wikipedia/random/RandomItemFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/random/RandomItemFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
