.class Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FeedFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/FeedFragment_ViewBinding;-><init>(Lorg/wikipedia/feed/FeedFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/FeedFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/FeedFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/FeedFragment_ViewBinding;Lorg/wikipedia/feed/FeedFragment;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;->this$0:Lorg/wikipedia/feed/FeedFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;->val$target:Lorg/wikipedia/feed/FeedFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment_ViewBinding$1;->val$target:Lorg/wikipedia/feed/FeedFragment;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedFragment;->onCustomizeClick()V

    return-void
.end method
