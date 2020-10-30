.class public Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;
.super Ljava/lang/Object;
.source "ConfigureItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/configure/ConfigureItemView;

.field private view7f090142:Landroid/view/View;

.field private view7f090148:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemView;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    const v0, 0x7f090142

    const-string v1, "field \'onSwitch\' and method \'onCheckedChanged\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'onSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->onSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 37
    iput-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090142:Landroid/view/View;

    .line 38
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;Lorg/wikipedia/feed/configure/ConfigureItemView;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09014c

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->titleView:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09014b

    const-string v2, "field \'subtitleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->subtitleView:Landroid/widget/TextView;

    const v0, 0x7f090143

    const-string v1, "field \'dragHandleView\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->dragHandleView:Landroid/view/View;

    const v0, 0x7f090149

    const-string v1, "field \'langListContainer\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->langListContainer:Landroid/view/View;

    .line 48
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090147

    const-string v2, "field \'langRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/feed/configure/ConfigureItemView;->langRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090148

    const-string v1, "method \'onLangClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090148:Landroid/view/View;

    .line 51
    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding$2;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;Lorg/wikipedia/feed/configure/ConfigureItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->target:Lorg/wikipedia/feed/configure/ConfigureItemView;

    .line 66
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->onSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 67
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->titleView:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->subtitleView:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->dragHandleView:Landroid/view/View;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langListContainer:Landroid/view/View;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090142:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iput-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090142:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090148:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView_ViewBinding;->view7f090148:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
