.class Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnThisDayPagesViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$1;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->onBaseViewClicked()V

    return-void
.end method
