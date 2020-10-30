.class Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnThisDayFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;->val$target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onCalendarClicked()V

    return-void
.end method
