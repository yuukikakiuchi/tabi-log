$(function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(category){
    var html = `<option value="${category.name}" data-category="${category.id}">${category.name}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    var childSelectHtml = '';
    childSelectHtml = `<div class='listing-select-wrapper__added' id= 'children_wrapper'>
                        <div class='listing-select-wrapper__box'>
                          <select class="listing-select-wrapper__box--select" id="child_category" name="category_id">
                            <option value="---" data-category="---">---</option>
                            ${insertHTML}
                          <select>
                          <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
                        </div>
                      </div>`;
    $('.listing-product-detail__category').append(childSelectHtml);
  }
  // 孫カテゴリーの表示作成
  // function appendGrandchidrenBox(insertHTML){
  //   var grandchildSelectHtml = '';
  //   grandchildSelectHtml = `<div class='listing-select-wrapper__added' id= 'grandchildren_wrapper'>
  //                             <div class='listing-select-wrapper__box'>
  //                               <select class="listing-select-wrapper__box--select" id="grandchild_category" name="category_id">
  //                                 <option value="---" data-category="---">---</option>
  //                                 ${insertHTML}
  //                               </select>
  //                               <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
  //                             </div>
  //                           </div>`;
  //   $('.listing-product-detail__category').append(grandchildSelectHtml);
  // }

  // 親カテゴリー選択後のイベント
  $('#parent_category').on('change', function(){
    var parentCategory = document.getElementById('parent_category').value; //選択された親カテゴリーの名前を取得
    if (parentCategory != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/posts/get_category_children',
        type: 'GET',
        data: { parent_name: parentCategory },
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove(); //親が変更された時、子以下を削除するする
        $('#grandchildren_wrapper').remove();
        $('#size_wrapper').remove();
        $('#brand_wrapper').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
      $('#grandchildren_wrapper').remove();
      $('#size_wrapper').remove();
      $('#brand_wrapper').remove();
    }
  });
  // 子カテゴリー選択後のイベント
  // $('.listing-product-detail__category').on('change', '#child_category', function(){
  //   var childId = $('#child_category option:selected').data('category'); //選択された子カテゴリーのidを取得
  //   if (childId != "---"){ //子カテゴリーが初期値でないことを確認
  //     $.ajax({
  //       url: 'get_category_grandchildren',
  //       type: 'GET',
  //       data: { child_id: childId },
  //       dataType: 'json'
  //     })
  //     .done(function(grandchildren){
  //       if (grandchildren.length != 0) {
  //         $('#grandchildren_wrapper').remove(); //子が変更された時、孫以下を削除するする
  //         $('#size_wrapper').remove();
  //         $('#brand_wrapper').remove();
  //         var insertHTML = '';
  //         grandchildren.forEach(function(grandchild){
  //           insertHTML += appendOption(grandchild);
  //         });
  //         appendGrandchidrenBox(insertHTML);
  //       }
  //     })
  //     .fail(function(){
  //       alert('カテゴリー取得に失敗しました');
  //     })
  //   }else{
  //     $('#grandchildren_wrapper').remove(); //子カテゴリーが初期値になった時、孫以下を削除する
  //     $('#size_wrapper').remove();
  //     $('#brand_wrapper').remove();
  //   }
  // });
});














5// $(function(){
//   // カテゴリーセレクトボックスのオプションを作成
//   function appendOption(category){
//     let html = `<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
//     return html;
//   }

//   //子カテゴリーのHTML
//   function appendChildrenBox(insertHTML) {
//     let childSelectHtml = '';
//     childSelectHtml = 
//       `<select class="select" id="children_category">
//          <option value="" data-category="" >選択してください</option>
//          ${insertHTML}</select>`;
//     $('#children_box').append(childSelectHtml);
//   }

//   // //孫カテゴリーのHTML
//   // function appendGrandchildrenBox(insertHTML) {
//   //   let grandchildSelectHtml = '';
//   //   grandchildSelectHtml = 
//   //     `<select class="select" id="grandchildren_category" name="item[category_id]">
//   //       <option value="" data-category="" >選択してください</option>
//   //       ${insertHTML}</select>`;
//   //   $('#grandchildren_box').append(grandchildSelectHtml);
//   // }

//   //親カテゴリー選択によるイベント
//   $(document).on("change","#parent_category", function() {
//     //選択された親カテゴリーの名前取得 → コントローラーに送る
//     let parentCategory =  $("#parent_category").val();
//     if (parentCategory != "") {
//       $.ajax( {
//         type: 'GET',
//         url: '/posts/get_category_children',
//         data: { parent_name: parentCategory },
//         dataType: 'json'
//       })
//       .done(function(children) {
//         //親カテゴリーが変更されたら、子/孫カテゴリー、サイズを削除し、初期値にする
//         $("#children_box").empty();
//         $("#grandchildren_box").empty();
//         $('.size_box').val('');
//         $('#size_box').css('display', 'none');
//         let insertHTML = '';
//         children.forEach(function(child) {
//           insertHTML += appendOption(child);
//         });
//         appendChildrenBox(insertHTML);
//       })
//       .fail(function() {
//         alert('error：子カテゴリーの取得に失敗');
//       })
//     }else{
//       $("#children_box").empty();
//       $("#grandchildren_box").empty();
//       $('.size_box').val('');
//       $('#size_box').css('display', 'none');
//     }
//   });

//   //子カテゴリー選択によるイベント発火
//   $(document).on('change', '#children_box', function() {
//     //選択された子カテゴリーidを取得
//     let childId = $('#children_category option:selected').data('category');
//     //子カテゴリーが初期値でない場合
//     if (childId != ""){
//       $.ajax({
//         url: '/items/get_category_grandchildren',
//         type: 'GET',
//         data: { child_id: childId },
//         datatype: 'json'
//       })
//       .done(function(grandchildren) {
//         if (grandchildren.length != 0) {
//           $("#grandchildren_box").empty();
//           $('.size_box').val('');
//           $('#size_box').css('display', 'none');
//           let insertHTML = '';
//           grandchildren.forEach(function(grandchild) {
//             insertHTML += appendOption(grandchild);
//           });
//           appendGrandchildrenBox(insertHTML);
//         }
//       })
//       .fail(function() {
//         alert('error:孫カテゴリーの取得に失敗');
//       })
//     }else{
//       $("#grandchildren_box").empty();
//       $('.size_box').val('');
//       $('#size_box').css('display', 'none');      
//     }
//   });
//   // //孫カテゴリー選択によるイベント発火
//   // $(document).on('change', '#grandchildren_box', function() {
//   //   let grandchildId = $('#grandchildren_category option:selected').data('category');
//   //   if (grandchildId != "") {
//   //     $('.size_box').val('');
//   //     $('#size_box').css('display', 'block');
//   //   } else {
//   //     $('.size_box').val('');
//   //     $('#size_box').css('display', 'none');
//   //   }
//   // });
// });
