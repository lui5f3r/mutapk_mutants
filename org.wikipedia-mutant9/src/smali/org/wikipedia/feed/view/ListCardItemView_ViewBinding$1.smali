.class Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ListCardItemView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/ListCardItemView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/view/ListCardItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;Lorg/wikipedia/feed/view/ListCardItemView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;->this$0:Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/view/ListCardItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/view/ListCardItemView;->onClick(Landroid/view/View;)V

    return-void
.end method
