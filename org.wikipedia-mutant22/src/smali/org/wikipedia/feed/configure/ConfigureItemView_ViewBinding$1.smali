.class Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;
.super Ljava/lang/Object;
.source "ConfigureItemView_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 38
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/configure/ConfigureItemView;->onCheckedChanged(Z)V

    return-void
.end method
