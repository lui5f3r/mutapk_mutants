.class Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnThisDayCardView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayCardView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/onthisday/OnThisDayCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayCardView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayCardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayCardView;->onMoreClick()V

    return-void
.end method
