.class Lorg/wikipedia/page/PageActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageActivity_ViewBinding;-><init>(Lorg/wikipedia/page/PageActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/page/PageActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageActivity_ViewBinding;Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding$1;->this$0:Lorg/wikipedia/page/PageActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/page/PageActivity_ViewBinding$1;->val$target:Lorg/wikipedia/page/PageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding$1;->val$target:Lorg/wikipedia/page/PageActivity;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageActivity;->onShowTabsButtonClicked()V

    return-void
.end method
