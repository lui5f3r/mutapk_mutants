.class Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ConfigureItemView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/configure/ConfigureItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;Lorg/wikipedia/feed/configure/ConfigureItemView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;->val$target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;->val$target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView;->onLangClick(Landroid/view/View;)V

    return-void
.end method
