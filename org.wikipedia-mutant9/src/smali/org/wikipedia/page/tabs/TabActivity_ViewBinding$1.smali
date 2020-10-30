.class Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TabActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;-><init>(Lorg/wikipedia/page/tabs/TabActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/page/tabs/TabActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;Lorg/wikipedia/page/tabs/TabActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;->val$target:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;->val$target:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/tabs/TabActivity;->onItemClick(Landroid/view/View;)V

    return-void
.end method
