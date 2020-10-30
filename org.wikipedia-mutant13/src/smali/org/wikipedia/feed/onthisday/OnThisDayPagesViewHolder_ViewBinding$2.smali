.class Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;
.super Ljava/lang/Object;
.source "OnThisDayPagesViewHolder_ViewBinding.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 38
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder_ViewBinding$2;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->showOverflowMenu(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
