.class Lorg/wikipedia/random/RandomFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RandomFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/random/RandomFragment_ViewBinding;-><init>(Lorg/wikipedia/random/RandomFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/random/RandomFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/random/RandomFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/random/RandomFragment_ViewBinding;Lorg/wikipedia/random/RandomFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding$3;->this$0:Lorg/wikipedia/random/RandomFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding$3;->val$target:Lorg/wikipedia/random/RandomFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding$3;->val$target:Lorg/wikipedia/random/RandomFragment;

    invoke-virtual {p1}, Lorg/wikipedia/random/RandomFragment;->onBackClick()V

    return-void
.end method
