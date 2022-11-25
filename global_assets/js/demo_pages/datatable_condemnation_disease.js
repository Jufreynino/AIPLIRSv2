/* ------------------------------------------------------------------------------
 *
 *  # Responsive extension for Datatables
 *
 *  Demo JS code for datatable_responsive.html page
 *
 * ---------------------------------------------------------------------------- */


// Setup module
// ------------------------------

var DatatableResponsive = function() {


    //
    // Setup module components
    //

    // Basic Datatable examples
    var _componentDatatableResponsive = function() {
        if (!$().DataTable) {
            console.warn('Warning - datatables.min.js is not loaded.');
            return;
        }

        // Setting datatable defaults
        $.extend( $.fn.dataTable.defaults, {
            autoWidth: false,
            responsive: true,
            deferRender:    true,
            scroller:       true,
            columnDefs: [{ 
                orderable: false,
                targets: [ 5 ]
            }],
            dom: '<"datatable-header"fl><"datatable-scroll-wrap"t><"datatable-footer"ip>',
            language: {
                search: '<span>Search:</span> _INPUT_',
                searchPlaceholder: ' Code or Disease',
                lengthMenu: '<span>Show:</span> _MENU_',
                paginate: { 'first': 'First', 'last': 'Last', 'next': $('html').attr('dir') == 'rtl' ? '&larr;' : '&rarr;', 'previous': $('html').attr('dir') == 'rtl' ? '&rarr;' : '&larr;' }
            }
        });


        
        // Basic responsive configuration
                    

                $('.datatable-condemned-disease').DataTable({
                    "order": [],
                    
                initComplete: function() {
                    this.api().columns([0, 1, 2,3]).every(function() {
                    var column = this;
                    var ddmenu = cbDropdown($(column.header()))
                        .on('change', ':checkbox', function() {
                        var active;
                        var vals = $(':checked', ddmenu).map(function(index, element) {
                            active = true;
                            return $.fn.dataTable.util.escapeRegex($(element).val());
                        }).toArray().join('|');

                        column
                            .search(vals.length > 0 ? '^(' + vals + ')$' : '', true, false)
                            .draw();

                        // Highlight the current item if selected.
                        if (this.checked) {
                            $(this).closest('li').addClass('active');
                        } else {
                            $(this).closest('li').removeClass('active');
                        }

                        // Highlight the current filter if selected.
                        var active2 = ddmenu.parent().is('.active');
                        if (active && !active2) {
                            ddmenu.parent().addClass('active');
                        } else if (!active && active2) {
                            ddmenu.parent().removeClass('active');
                        }
                        });

                    column.data().unique().sort().each(function(d, j) {
                        var // wrapped

                        $label = $('<label  style="margin-top:1px;">'),
                        $text = $('<span>', {
                            text: 'Select'
                        }),
                        $cb = $('<input >', {
                            type: 'checkbox',
                            value: 'Select'
                        });
                        




                        $label = $('<label  style="margin-top:1px;">'),
                        $text = $('<span>', {
                            text: d
                        }),
                        $cb = $('<input >', {
                            type: 'checkbox',
                            value: d
                        });

                        $text.appendTo($label);
                        $cb.appendTo($label);

                        ddmenu.append($('<li>').append($label));
                    });
                    });
                }
                });


        // Column controlled child rows
        $('.datatable-condemned-disease-column-controlled').DataTable({
            responsive: {
                details: {
                    type: 'column'
                }
            },
            columnDefs: [
                {
                    className: 'control',
                    orderable: false,
                    targets:   0
                },
                { 
                    width: "100px",
                    targets: [6]
                },
                { 
                    orderable: false,
                    targets: [6]
                }
            ],
            order: [1, 'asc'],
            
            fixedHeader: true,

        
        });


        // Control position
        $('.datatable-condemned-disease-control-right').DataTable({
            responsive: {
                details: {
                    type: 'column',
                    target: -1
                }
            },
            columnDefs: [
                {
                    className: 'control',
                    orderable: false,
                    targets: -1
                },
                { 
                    width: "100px",
                    targets: [5]
                },
                { 
                    orderable: false,
                    targets: [5]
                }
            ]
        });


        // Whole row as a control
        $('.datatable-condemned-disease-row-control').DataTable({
            responsive: {
                details: {
                    type: 'column',
                    target: 'tr'
                }
            },
            columnDefs: [
                {
                    className: 'control',
                    orderable: false,
                    targets:   0
                },
                { 
                    width: "100px",
                    targets: [6]
                },
                { 
                    orderable: false,
                    targets: [6]
                }
            ],
            order: [1, 'asc']
        });
    };

    // Select2 for length menu styling
    var _componentSelect2 = function() {
        if (!$().select2) {
            console.warn('Warning - select2.min.js is not loaded.');
            return;
        }

        // Initialize
        $('.dataTables_length select').select2({
            minimumResultsForSearch: Infinity,
            dropdownAutoWidth: true,
            width: 'auto'
        });
    };


    //
    // Return objects assigned to module
    //

    return {
        init: function() {
            _componentDatatableResponsive();
            _componentSelect2();
        }
    }
}();


// Initialize module
// ------------------------------

document.addEventListener('DOMContentLoaded', function() {
    DatatableResponsive.init();
});