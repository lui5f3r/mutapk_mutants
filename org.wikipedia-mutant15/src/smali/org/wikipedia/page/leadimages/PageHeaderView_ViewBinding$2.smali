.class Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PageHeaderView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;-><init>(Lorg/wikipedia/page/leadimages/PageHeaderView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/page/leadimages/PageHeaderView;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;Lorg/wikipedia/page/leadimages/PageHeaderView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;->this$0:Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;->val$target:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/PageHeaderView_ViewBinding$2;->val$target:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-virtual {p1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->onCallToActionClicked()V

    return-void
.end method
