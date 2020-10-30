.class final Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Lorg/wikipedia/notifications/NotificationActivity$1;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;-><init>(Lorg/wikipedia/notifications/NotificationActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->access$1100(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 614
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationDateHolder;

    if-eqz v0, :cond_0

    .line 615
    check-cast p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationDateHolder;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->access$1300(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationDateHolder;->bindItem(Ljava/util/Date;)V

    goto :goto_0

    .line 616
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;

    if-eqz v0, :cond_1

    .line 617
    check-cast p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-virtual {p1, v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->bindItem(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)V

    goto :goto_0

    .line 618
    :cond_1
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    if-eqz v0, :cond_2

    .line 619
    check-cast p1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-virtual {p1, v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->bindItem(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)V

    .line 623
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$1000(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$1400(Lorg/wikipedia/notifications/NotificationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 624
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$1500(Lorg/wikipedia/notifications/NotificationActivity;)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 603
    new-instance p2, Lorg/wikipedia/notifications/NotificationActivity$NotificationDateHolder;

    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationDateHolder;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    return-object p2

    .line 605
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p2}, Lorg/wikipedia/notifications/NotificationActivity;->access$1200(Lorg/wikipedia/notifications/NotificationActivity;)Z

    move-result p2

    const v1, 0x7f0c0082

    if-eqz p2, :cond_1

    .line 606
    new-instance p2, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    return-object p2

    .line 608
    :cond_1
    new-instance p2, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;

    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemAdapter;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolderSwipeable;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    return-object p2
.end method
